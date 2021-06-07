import 'package:flutter/material.dart';

class ContainerTextField extends StatelessWidget {
  TextEditingController textEditingController;
  ContainerTextField({this.textEditingController});

  @override
  Widget build(BuildContext context) {
    FocusNode _focusNode = FocusScope.of(context);
    return Container(
      width: 45,
      height: 60,
      child: TextField(
        onChanged: (value){
          _focusNode.nextFocus();
        },
        controller: textEditingController,
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: "",
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.grey,
          )),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.grey,
          )),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              )),

          fillColor: Colors.white70,
        ),
      ),
    );
  }
}
