import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';

class ProfileWatching extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('NO ITEMS ON YOUR WATCHING LIST',
              style: ProfileScreenBodyText1()),
          SizedBox(
            height: 7,
          ),
          Text(
            'Discover Beautiful Things!',
            style: ProfileScreenBodyBoldText(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 250, 24),
            child: Divider(
              color: Colors.green,
              thickness: 3,
            ),
          ),
          Text('Items you have bought will appear here.'),
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
                    'Discover now',
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
// Text('NO ITEMS ON YOUR WATCHING LIST',
// style: ProfileScreenBodyText1()),
// SizedBox(
// height: 7,
// ),
// Text(
// 'Discover Beautiful Things!',
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
// 'Items you have bought will appear here.'),
// SizedBox(height: MediaQuery.of(context).size.height*0.03,),
// Container(
// width: MediaQuery.of(context).size.width,
// decoration: BoxDecoration(
// color: Colors.green[800],
//
// borderRadius: BorderRadius.all(Radius.circular(8))
// ),
// child: TextButton(
// onPressed: () {}, child: Text('Discover now',style: TextStyle(color: Colors.white),)))
// ],
// ),
// )
