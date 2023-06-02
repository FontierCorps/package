// import 'package:flutter/material.dart';
//
// import 'screenB.dart';
//
// class FirstScreen extends StatefulWidget {
//   const FirstScreen({super.key});
//
//   @override
//   _FirstScreenState createState() => _FirstScreenState();
// }
//
// class _FirstScreenState extends State<FirstScreen> {
//   TextEditingController sideAController = TextEditingController();
//   TextEditingController sideBController = TextEditingController();
//   TextEditingController sideCController = TextEditingController();
//
//   bool isButtonEnabled = false;
//
//   void checkInputFields() {
//     setState(() {
//       isButtonEnabled = sideAController.text.isNotEmpty &&
//           sideBController.text.isNotEmpty &&
//           sideCController.text.isNotEmpty;
//     });
//   }
//
//   void reset() {
//     if (sideAController.text.isNotEmpty &&
//         sideBController.text.isNotEmpty &&
//         sideCController.text.isNotEmpty) {
//       sideAController.text = "";
//       sideBController.text = "";
//       sideCController.text = "";
//       setState(() {
//         isButtonEnabled = false;
//       });
//     }
//   }
//
//   void navigateToScreen2() {
//     if (isButtonEnabled) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => SecondScreen(
//                   sideA: double.parse(sideAController.text),
//                   sideB: double.parse(sideBController.text),
//                   sideC: double.parse(sideCController.text),
//                 )),
//       );
//     }
//   }
//
//   @override
//   void dispose() {
//     sideAController.dispose();
//     sideBController.dispose();
//     sideCController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Screen 1')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: sideAController,
//                 keyboardType: TextInputType.number,
//                 decoration: const InputDecoration(labelText: 'Side A'),
//                 onChanged: (value) => checkInputFields(),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: sideBController,
//                 keyboardType: TextInputType.number,
//                 decoration: const InputDecoration(labelText: 'Side B'),
//                 onChanged: (value) => checkInputFields(),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: sideCController,
//                 keyboardType: TextInputType.number,
//                 decoration: const InputDecoration(labelText: 'Side C'),
//                 onChanged: (value) => checkInputFields(),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: isButtonEnabled ? navigateToScreen2 : null,
//               child: const Text('Type'),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             ElevatedButton(
//               onPressed: sideAController.text.isNotEmpty &&
//                       sideBController.text.isNotEmpty &&
//                       sideCController.text.isNotEmpty
//                   ? reset
//                   : null,
//               child: const Text('Reset'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
