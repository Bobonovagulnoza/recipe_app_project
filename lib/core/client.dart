
import 'package:dio/dio.dart';
import 'package:recipe_app_project1/auth/data/models/user_model.dart';
import 'package:recipe_app_project1/core/routing/routes.dart';
import 'package:recipe_app_project1/core/secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../auth/data/repositories/AuthException.dart';
import '../auth/data/repositories/AuthInterceptor.dart';
import '../categories_detail/presentation/widgets/recipe_bottom_navigator.dart';
import '../categories_detail/presentation/widgets/recipe_item.dart';


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class ApiClient {
  ApiClient() {
    dio.interceptors.add(AuthInterceptor());
  }
  final Dio dio = Dio(BaseOptions(baseUrl: "http://10.10.3.166:8888/api/v1"));

  Future<String> login(String login, String password) async {
    var response = await dio.post(
      '/auth/login',
      data: {"login": login, "password": password},
    );

    if (response.statusCode == 401) {
      throw AuthException(message: "Login muvaffaqiyatsiz, ma'lumotlar noto'g'ri.");
    } else if (response.statusCode == 200) {
      Map<String, String> data = Map<String, String>.from(response.data);
      return data['accessToken']!;
    } else {
      throw AuthException(message: "Login davomida xatolik yuz berdi.");
    }
  }

  Future<String> register(UserModel user) async {
    var response = await dio.post(
      '/auth/register',
      data: {
        "username": user.username,
        "fullName": user.fullName,
        "email": user.email,
        "phoneNumber": user.phoneNumber,
        "birthDate": user.birthDate,
        "password": user.password,
      },
    );

    if (response.statusCode == 401) {
      throw AuthException(message: "Foydalanuvchi ro'yxatdan o'tishi muvaffaqiyatsiz.");
    } else if (response.statusCode == 200) {
      Map<String, String> data = Map<String, String>.from(response.data);
      return data['accessToken']!;
    } else {
      throw AuthException(message: "Ro'yxatdan o'tishda xatolik yuz berdi.");
    }
  }

  Future<Map<String, dynamic>> fetchMyProfile() async {
    try {
      var response = await dio.get('/auth/me');

      if (response.statusCode == 200) {
        return response.data;
      } else if (response.statusCode == 401) {
        final credentials = await SecureStorage.getCredentials();

        if (credentials == null || credentials['login'] == null || credentials['password'] == null) {
          navigatorKey.currentContext!.go(Routes.login);
          throw Exception("Login credentials not found.");
        }
        final jwt = await login(credentials['login']!, credentials['password']!);

        await SecureStorage.deleteToken();
        await SecureStorage.saveToken(jwt);

        var newResponse = await dio.get('/auth/me');
        if (newResponse.statusCode == 200) {
          return newResponse.data;
        } else {
          navigatorKey.currentContext!.go(Routes.login);
          throw Exception("User is not authorized.");
        }
      } else {
        throw Exception("Profilni olishda xatolik yuz berdi.");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }

  Future<List<dynamic>> fetchOnboardingPages() async {
    var response = await dio.get("/onboarding/list");
    if (response.statusCode == 401) {
      throw AuthException(message: "Onboarding sahifalariga kirishda ruxsat yo'q.");
    } else if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("Onboarding sahifalarini olishda xatolik.");
    }
  }

  Future<List<dynamic>> fetchCategories() async {
    var response = await dio.get('/categories/list');
    if (response.statusCode == 401) {
      throw AuthException(message: "Kategoriyalar ro'yxatini olishda ruxsat yo'q.");
    } else if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("Kategoriyalarni olishda xatolik.");
    }
  }

  Future<List<dynamic>> fetchRecipesByCategory(int categoryId) async {
    var response = await dio.get('/recipes/list?Category=$categoryId');
    if (response.statusCode == 401) {
      throw AuthException(message: "Kategoriya bo'yicha retseptlarni olishda ruxsat yo'q.");
    } else if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("Kategoriya bo'yicha retseptlarni olishda xatolik.");
    }
  }

  Future<Map<String, dynamic>> fetchRecipeById(int recipeId) async {
    var response = await dio.get('/recipes/detail/$recipeId');
    if (response.statusCode == 401) {
      throw AuthException(message: "Retseptni olishda ruxsat yo'q.");
    } else if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("Retseptni olishda xatolik.");
    }
  }



}
