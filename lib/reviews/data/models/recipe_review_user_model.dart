class UserModelInRecipe{
  final int id;
  final String profilePhoto;
  final String username;
  final String firstName;
  final String lastName;

  UserModelInRecipe({
    required this.id,
    required this.profilePhoto,
    required this.username,
    required this.firstName,
    required this.lastName,
  });

  factory UserModelInRecipe.fromJson(Map<String, dynamic> json) {
    return UserModelInRecipe(
      id: json["id"] ,
      profilePhoto: json["profilePhoto"],
      username: json["username"] ,
      firstName: json["firstName"] ,
      lastName: json["lastName"] ,
    );
  }
}