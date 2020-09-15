import 'package:flutter/material.dart';
import 'dart:math';


void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Perguntaí que eu respondo em inglês'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int bolaN = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  bolaN = Random().nextInt(5)+1;
                });
              },
                child: Image.asset('images/ball$bolaN.png'),
            ),
          ),
        ],
      ),
    );
  }
}


  
//   return runApp(
//     MaterialApp(
//         home: Scaffold(
//           backgroundColor: Colors.blue,
//           appBar: AppBar(
//             title: Text(
//                 'Ask me anything'
//             ),
//             backgroundColor: Colors.blueAccent,
//           ),
//           body: BallPage(),
//         )
//     ),
//   );
// }
//
// class BallPage extends StatefulWidget {
//   @override
//   _BallPageState createState() => _BallPageState();
// }
//
// class _BallPageState extends State<BallPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//        
//       ),
//     )
//   }


