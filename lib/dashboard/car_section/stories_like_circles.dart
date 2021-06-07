import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  String your_text;
  String your_image;
  Color your_color;

  Stories({this.your_text, this.your_image,this.your_color});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 66,
            width: 66,
            decoration: BoxDecoration(
              color: your_color,
              image: DecorationImage(
                image: AssetImage(
                    your_image),
                fit: BoxFit.fitWidth,
              ),
              shape: BoxShape.circle,
            ),
          )
        ),
        Text(your_text,style: TextStyle(fontFamily: 'Helvetica',fontSize: 12,color: Colors.black)),

      ],
    );
  }
}
