// import 'package:flutter/material.dart';
// class ReviewsPage extends StatelessWidget {
//   const ReviewsPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CustomAppBar(),
//       body: Column(
//         children: const [
//           FoodInfo(),
//           Expanded(
//             child: ReviewList(),
//           ),
//           BottomBar(),
//         ],
//       ),
//     );
//   }
// }
//
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: const Text('Reviews'),
//       leading: IconButton(
//         icon: const Icon(Icons.arrow_back), // SVG fayl o‘rniga test uchun icon ishlatilgan
//         onPressed: () {},
//       ),
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
//
// class FoodInfo extends StatelessWidget {
//   const FoodInfo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(12.0),
//             child: Image.asset(
//               'assets/images/img_4.png', // O'zgartirish kerak
//               height: 150,
//               width: 150,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(height: 8),
//           ElevatedButton(
//             onPressed: () {},
//             child: const Text('Add Review'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ReviewList extends StatelessWidget {
//   const ReviewList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: const [
//         ReviewCard(
//           username: '@r_joshua',
//           timeAgo: '15 Mins Ago',
//           rating: 4,
//         ),
//         ReviewCard(
//           username: '@josh-ryan',
//           timeAgo: '40 Mins Ago',
//           rating: 3,
//         ),
//         ReviewCard(
//           username: '@sweet.sarah',
//           timeAgo: '1 Hr Ago',
//           rating: 5,
//         ),
//       ],
//     );
//   }
// }
//
// class ReviewCard extends StatelessWidget {
//   final String username;
//   final String timeAgo;
//   final int rating;
//
//   const ReviewCard({
//     super.key,
//     required this.username,
//     required this.timeAgo,
//     required this.rating,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.all(8.0),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(username, style: const TextStyle(fontWeight: FontWeight.bold)),
//                 Text(timeAgo, style: const TextStyle(color: Colors.grey)),
//               ],
//             ),
//             const SizedBox(height: 8),
//             Row(
//               children: List.generate(
//                 5,
//                     (index) => Icon(
//                   index < rating ? Icons.star : Icons.star_border,
//                   color: Colors.amber,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class BottomBar extends StatelessWidget {
//   const BottomBar({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       child: Container(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             IconButton(icon: const Icon(Icons.home), onPressed: () {}),
//             IconButton(icon: const Icon(Icons.search), onPressed: () {}),
//             IconButton(icon: const Icon(Icons.favorite), onPressed: () {}),
//             IconButton(icon: const Icon(Icons.person), onPressed: () {}),
//           ],
//         ),
//       ),
//     );
//   }
// }
