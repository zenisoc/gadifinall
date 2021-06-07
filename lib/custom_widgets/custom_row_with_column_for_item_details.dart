import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDescription extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  String text4;

  ItemDescription({this.text1, this.text2, this.text3, this.text4});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text1,style: BlackBoldText(),),
              SizedBox(height: 5,),
              Text(text2,style: ContainerBodyText(),),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(text3,style: BlackBoldText(),),
              SizedBox(height: 5,),
              Text(text4,style: ContainerBodyText(),),
            ],
          ),

        ],
      ),
    );
  }
}
class ContainerForQuestionAnswer extends StatelessWidget {
  String sometext;
  Icon your_icon;


  ContainerForQuestionAnswer({this.sometext,this.your_icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width*0.7,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Text(sometext,style:BlackBoldText() ,),

          your_icon,


        ],
      ),
    );
  }
}

class RowWithIconsText extends StatelessWidget {
  Icon your_icon;
  String your_text;

  RowWithIconsText({this.your_icon, this.your_text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        your_icon,
        SizedBox(width: 10,),
        Text(your_text,style: ContainerBodyText(),),

      ],
    );
  }
}





BlackBoldText() {
  return TextStyle(
    fontSize: 14,
    fontFamily: 'Helvetica',
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );
}

ContainerBodyText() {
  return TextStyle(fontSize: 14, fontFamily: 'Helvetica', color: Colors.grey);
}