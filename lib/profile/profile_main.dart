import 'package:flutter/material.dart';
import 'package:gaadibazaar/constants/theme_style.dart';
import 'package:gaadibazaar/custom_widgets/container_with_icons_text_and_arrows.dart';
import 'package:gaadibazaar/profile/profile_selling.dart';
import 'package:gaadibazaar/profile/profile_watching.dart';



class ProfileMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: CustomScrollView(
          slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 430.0,
                floating: false,
                pinned: true,
                backgroundColor: Colors.white,
                title: Text('Profile',style: ProfileScreenAppBarTextTheme() ,),
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(Icons.settings,color: Colors.green,),
                  )
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                      children: [
                        Spacer(),
                      Row(
                      children: [
                      CircleAvatar(
                      backgroundImage:
                      AssetImage('assets/images/beard_man.jpg'),
                      radius: 36,
                      ),
                      SizedBox(
                      width: 25,
                      ),
                      Text(
                      'Narayan Shrestha',
                      style: ProfileScreenAppBarTextTheme(),
                      ),
                      ],
                      ),
                      SizedBox(
                      height: 5,
                      ),
                      ContainerWithIconsTextArrows(
                      your_icon:
                      Icon(Icons.work_outline, color: Colors.green),
                      your_text: 'Business Type',
                      your_next_text: 'Trader',
                      ),
                      ContainerWithIconsTextArrows(
                      your_icon: Icon(Icons.email, color: Colors.green),
                      your_text: 'Email',
                      your_next_text: 'random145@email.com',
                      ),
                      ContainerWithIconsTextArrows(
                      your_icon: Icon(Icons.phone_android_outlined,
                      color: Colors.green),
                      your_text: 'Phone Number',
                      your_next_text: '+1259998456',
                      ),
                      ContainerWithIconsTextArrows(
                      your_icon:
                      Icon(Icons.lock_outline_sharp, color: Colors.green),
                      your_text: 'Change Password',
                      your_next_text: '***********',
                      ),
                      SizedBox(
                      height: MediaQuery.of(context).size.height * 0.09,
                      ),
                      ],
                      ),

                ),
                ),
                bottom: TabBar(
                  tabs: [
                  Tab(
                      child: Expanded(
                        child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width,
                          height:MediaQuery.of(context).size.height ,
                          child: Center(
                            child: Text(
                              'Selling',
                              style: ProfileScreenBodyText2(),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Tab(
                      child: Expanded(
                        child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width,
                          height:MediaQuery.of(context).size.height ,
                          child: Center(
                            child: Text(
                              'Watching',
                              style: ProfileScreenBodyText2(),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],

                ),



              ),
            SliverList(delegate: SliverChildListDelegate(
              [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(

                    children: [
                      ProfileSelling(),
                      ProfileWatching(),
                    ],
                  ),
                )
              ],
            ),
            ),


            ]
    ),
      )
    );

  }
}


// flexibleSpace: FlexibleSpaceBar(
// background: Padding(
// padding: const EdgeInsets.all(16.0),
// child: Column(
// children: [
// Row(
// children: [
// CircleAvatar(
// backgroundImage:
// AssetImage('assets/images/beard_man.jpg'),
// radius: 36,
// ),
// SizedBox(
// width: 25,
// ),
// Text(
// 'Narayan Shrestha',
// style: ProfileScreenAppBarTextTheme(),
// ),
// ],
// ),
// SizedBox(
// height: 5,
// ),
// ContainerWithIconsTextArrows(
// your_icon:
// Icon(Icons.work_outline, color: Colors.green),
// your_text: 'Business Type',
// your_next_text: 'Trader',
// ),
// ContainerWithIconsTextArrows(
// your_icon: Icon(Icons.email, color: Colors.green),
// your_text: 'Email',
// your_next_text: 'random145@email.com',
// ),
// ContainerWithIconsTextArrows(
// your_icon: Icon(Icons.phone_android_outlined,
// color: Colors.green),
// your_text: 'Phone Number',
// your_next_text: '+1259998456',
// ),
// ContainerWithIconsTextArrows(
// your_icon:
// Icon(Icons.lock_outline_sharp, color: Colors.green),
// your_text: 'Change Password',
// your_next_text: '***********',
// ),
// SizedBox(
// height: MediaQuery.of(context).size.height * 0.09,
// ),
// ],
// ),
// ),
// ),














// bottom: TabBar(
//   labelColor: Colors.black87,
//   indicatorColor: Colors.green,
//   // unselectedLabelColor: Colors.grey,
//   tabs: [
//     Tab(
//       child: Expanded(
//         child: Container(
//           color: Colors.white,
//           width: MediaQuery.of(context).size.width,
//           height:MediaQuery.of(context).size.height ,
//           child: Center(
//             child: Text(
//               'Selling',
//               style: ProfileScreenBodyText2(),
//             ),
//           ),
//         ),
//       ),
//     ),
//     Tab(
//       child: Expanded(
//         child: Container(
//           color: Colors.white,
//
//           child: Center(
//             child: Text(
//               'Watching',
//               style: ProfileScreenBodyText2(),
//             ),
//           ),
//         ),
//       ),
//     ),
//   ],
// ),









// title: Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Text('Profile', style: ProfileScreenAppBarTextTheme()),
//     Icon(
//       Icons.settings,
//       color: Colors.green,
//     ),
//   ],
// ),
