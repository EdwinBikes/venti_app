// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart';

// class VentiModel {
//   Future<Map<String, dynamic>> fetchData() async {
//     final response = await http
//         .get(Uri.parse('https://venti-monolite-api-o1h6-dev.fl0.io/cashiers'));

//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Error, en los datos');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('API Example'),
//       ),
//       body: Center(
//         child: FutureBuilder<Map<String, dynamic>>(
//           future: fetchData(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const CircularProgressIndicator();
//             } else if (snapshot.hasError) {
//               return Text('Error: ${snapshot.error}');
//             } else {
//               final data = snapshot.data;
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Name: ${data['name']}'),
//                   Text('Email: ${data['email']}'),
//                   Text('Phone: ${data['phone']}'),
//                   Text('Legal ID: ${data['legalId']}'),
//                   Text('Legal ID Type: ${data['legalIdType']}'),
//                   Text('Merchant ID: ${data['merchantId']}'),
//                 ],
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
