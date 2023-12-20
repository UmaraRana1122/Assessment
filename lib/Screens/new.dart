// import 'package:flutter/material.dart';
// import 'package:math_expressions/math_expressions.dart';
// import 'package:math_expressions/math_expressions.dart';
// import 'package:math_expressions/math_expressions.dart';
// import 'package:test_app/colors.dart';
// import 'package:petitparser/petitparser.dart';

// void main() => runApp(MaterialApp(
//       home: calculator(),
//     ));

// class calculator extends StatefulWidget {
//   @override
//   State<calculator> createState() => _calculatorState();
// }

// class _calculatorState extends State<calculator> {
//   double firstNum = 0.0;
//   double secondNum = 0.0;
//   var input = '';
//   var output = '';
//   var operator = '';
//   onButtonclick(value) {
//     if (value == "Ac") {
//       input = '';
//       output = '';
//     } else if (value == "<") {
//       input = input.substring(0, input.length - 1);
//     } else if (value == "=") {
//       var Userinput = input;
//       Userinput = input.replaceAll('×', '*');
//       Parser p = Parser();
//       Expression expression = p.Parser(Userinput);
//       ContextModel cm = ContextModel();
//       var finalvalue = expression.evaluate(EvaluationType.REAL, cm);
//       output.finalvalue.toString();
//     } else {
//       input = input + value;
//     }
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       body: SafeArea(
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Container(
//                   margin: EdgeInsets.fromLTRB(0, 20, 10, 0),
//                   child: IconButton(
//                     icon: Icon(Icons.settings),
//                     onPressed: () {},
//                   ),
//                 ),
//               ],
//             ),
//             Expanded(
//                 child: Container(
//               width: double.infinity,
//               padding: EdgeInsets.all(12),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Text(
//                     input,
//                     style: TextStyle(
//                       fontSize: 40,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     output,
//                     style: TextStyle(
//                       fontSize: 35,
//                       color: Colors.black.withOpacity(0.7),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                 ],
//               ),
//             )),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Container(
//                   child: IconButton(
//                     icon: Icon(Icons.history),
//                     onPressed: () {},
//                   ),
//                 ),
//                 Container(
//                   child: IconButton(
//                     icon: Icon(Icons.rotate_90_degrees_ccw),
//                     onPressed: () {},
//                   ),
//                 )
//               ],
//             ),
//             //buttons
//             Row(
//               children: [
//                 button(text: 'AC', tcolor: Colors.grey[400]),
//                 button(text: '<', tcolor: Colors.grey[400]),
//                 button(text: '/', tcolor: Colors.grey[400]),
//                 button(text: '÷', tcolor: Colors.blue[400]),
//               ],
//             ),
//             Row(
//               children: [
//                 button(text: '7'),
//                 button(text: '8'),
//                 button(text: '9'),
//                 button(text: '×', tcolor: Colors.blue[400]),
//               ],
//             ),
//             Row(
//               children: [
//                 button(text: '4'),
//                 button(text: '5'),
//                 button(text: '6'),
//                 button(text: '-', tcolor: Colors.blue[400]),
//               ],
//             ),
//             Row(
//               children: [
//                 button(text: '1'),
//                 button(text: '2'),
//                 button(text: '3'),
//                 button(text: '+', tcolor: Colors.blue[400]),
//               ],
//             ),
//             Row(
//               children: [
//                 button(text: '%'),
//                 button(text: '0'),
//                 button(text: '.'),
//                 button(text: '=', tcolor: Colors.blue[400]),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget button({text, tcolor = Colors.black, buttonbgcolor = buttoncolor}) {
//     return Expanded(
//       child: Container(
//         margin: EdgeInsets.all(8),
//         child: TextButton(
//           style: TextButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             padding: EdgeInsets.all(22),
//             primary: buttonbgcolor,
//           ),
//           onPressed: () => onButtonclick(text),
//           child: Text(
//             text,
//             style: TextStyle(
//               fontSize: 25,
//               color: tcolor,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
