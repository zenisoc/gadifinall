import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';

class ProfileSelling extends StatefulWidget {
  @override
  _ProfileSellingState createState() => _ProfileSellingState();
}

class _ProfileSellingState extends State<ProfileSelling> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('NO ITEMS ON YOUR SELL LIST', style: ProfileScreenBodyText1()),
          SizedBox(
            height: 7,
          ),
          Text(
            'Sell Something!',
            style: ProfileScreenBodyBoldText(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 250, 24),
            child: Divider(
              color: Colors.green,
              thickness: 3,
            ),
          ),
          Image.asset('assets/images/lambo.jpg'),
          Text('As soon as you sell something it will appear here'),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.green[800],
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sell now',
                    style: TextStyle(color: Colors.white),
                  )))
        ],
      ),
    );
  }
}

// Padding(
// padding: const EdgeInsets.all(16.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text('NO ITEMS ON YOUR SELL LIST',
// style: ProfileScreenBodyText1()),
// SizedBox(
// height: 7,
// ),
// Text(
// 'Sell Something!',
// style: ProfileScreenBodyBoldText(),
// ),
// Padding(
// padding: const EdgeInsets.fromLTRB(0, 10, 250, 24),
// child: Divider(
// color: Colors.green,
// thickness: 3,
// ),
// ),
// Text(
// 'As soon as you sell something it will appear here'),
// SizedBox(height: MediaQuery.of(context).size.height*0.03,),
// Container(
// width: MediaQuery.of(context).size.width,
// decoration: BoxDecoration(
// color: Colors.green[800],
// borderRadius: BorderRadius.all(Radius.circular(8))
// ),
// child: TextButton(
// onPressed: () {}, child: Text('Sell now',style: TextStyle(color: Colors.white),)))
// ],
// ),
// )
