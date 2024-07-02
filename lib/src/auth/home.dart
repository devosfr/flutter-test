import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          ListView(
            children: const [],
          ),
          SizedBox(
            height: 100,
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
