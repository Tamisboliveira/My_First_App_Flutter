import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container
      (
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(color: Colors.red, width: 50, height: 50,),
              Container(color: Colors.orange, width: 50, height: 50,),
              Container(color: Colors.yellow, width: 50, height: 50,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(color: Colors.green, width: 50, height: 50,),
              Container(color: Colors.blue, width: 50, height: 50,),
              Container(color: Colors.blueAccent, width: 50, height: 50,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(color: Colors.purple, width: 50, height: 50,),
              Container(color: Colors.pink, width: 50, height: 50,),
              Container(color: Colors.white, width: 50, height: 50,),
            ],
          ),
        ],
      ),
    );
  }
}


