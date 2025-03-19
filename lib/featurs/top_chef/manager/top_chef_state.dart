// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../manager/top_chef_bloc.dart';
// import '../pages/top_chef_page.dart';
//
// class TopChefPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(title: Text("Top Chef"), backgroundColor: Colors.brown.shade900),
//       body: BlocBuilder<ChefBloc, ChefState>(
//         builder: (context, state) {
//           if (state is ChefLoadingState) {
//             return Center(child: CircularProgressIndicator());
//           }
//           if (state is ChefErrorState) {
//             return Center(child: Text(state.message, style: TextStyle(color: Colors.white)));
//           }
//           if (state is ChefLoadedState) {
//             return SingleChildScrollView(
//               child: Column(
//                 children: [
//                   CategorySection(title: "Most Viewed Chefs", chefs: state.mostViewedChefs, color: Colors.redAccent),
//                   CategorySection(title: "Most Liked Chefs", chefs: state.mostLikedChefs, color: Colors.brown),
//                   CategorySection(title: "New Chefs", chefs: state.newChefs, color: Colors.grey),
//                 ],
//               ),
//             );
//           }
//           return SizedBox();
//         },
//       ),
//     );
//   }
// }
