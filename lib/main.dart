// import 'package:flutter/material.dart';

// class Goal {
//   const Goal({required this.title, required this.target});

//   final String title;
//   final int target;
// }

// class GoalCounter extends StatefulWidget {
//   const GoalCounter({super.key, required this.goal});

//   final Goal goal;

//   @override
//   State<GoalCounter> createState() => _GoalCounterState();
// }

// class _GoalCounterState extends State<GoalCounter> {
//   int count = 0;

//   bool get isDone => count == widget.goal.target;

//   void increment() {
//     if (count < widget.goal.target) {
//       setState(() {
//         count++;
//       });
//     }
//   }

//   void decrement() {
//     if (count > 0) {
//       setState(() {
//         count--;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(10),
//       padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//       decoration: BoxDecoration(
//         color: isDone ? Colors.green[100] : Colors.grey[200],
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Row(
//         children: [
//           if (isDone) ...[
//             Icon(Icons.check_circle, color: Colors.green),
//             SizedBox(width: 10),
//           ],
//           Expanded(
//             child: Text(widget.goal.title, style: TextStyle(fontSize: 18)),
//           ),
//           IconButton(
//             onPressed: decrement,
//             icon: Icon(Icons.remove),
//           ),
//           Text(
//             "$count / ${widget.goal.target}",
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           IconButton(
//             onPressed: increment,
//             icon: Icon(Icons.add),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blueGrey,
//           title: Text(
//             "W8 - Stateful Widgets",
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//         body: Column(
//           children: [
//             GoalCounter(goal: Goal(title: "Drink water", target: 8)),
//             GoalCounter(goal: Goal(title: "Read a book", target: 3)),
//             GoalCounter(goal: Goal(title: "Run (km)", target: 5)),
//           ],
//         ),
//       ),
//     ),
//   );
// }