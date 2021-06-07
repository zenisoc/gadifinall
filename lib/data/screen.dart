import 'package:flutter/material.dart';

class  Screen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              height: 202,
              width: 202,
              color:  Colors.red,

            ),
          ),
        ),
      ),
    );
  }
}
