import 'package:flutter/material.dart';

class ContainerImageText extends StatelessWidget {
  Color color;
  String image;
  String text;


  ContainerImageText({this.color, this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 129,
          height: 106,
          color: color,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0,5, 0, 0),
                child: Center(child: Text(text,style: TextStyle(color: Colors.white),)),
              ),
              Expanded(child: Image.asset(image, fit:BoxFit.fill,)),
            ],
          )
        ),
      ),
    );
  }

}
