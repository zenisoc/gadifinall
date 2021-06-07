import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import '../../custom_widgets/custom_row_with_column_for_item_details.dart';

class ConstructionDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          margin:  const EdgeInsets.symmetric(horizontal: 10),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  color: Colors.green,

                  width: MediaQuery.of(context).size.width*0.3,
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        Icon(Icons.phone_in_talk, color: Colors.white),
                        Text('Call', style: WhiteBoldText(),),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,

                  width: MediaQuery.of(context).size.width*0.3,
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Icon(Icons.message_outlined, color: Colors.green),
                        Text('SMS', style: GreenBoldText(),),

                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color(0xFF008000),
              leading: Icon(Icons.arrow_back_ios),
              actions: [
                Icon(Icons.share_outlined),
                SizedBox(width: 10,)
              ],
              pinned: true,
              floating: true,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  height: 200,
                  color: Colors.red,
                  child: Carousel(
                    dotIncreasedColor: Colors.green,
                    dotBgColor: Colors.transparent,
                    dotPosition: DotPosition.bottomRight,
                    dotSize: 5,
                    images: [
                      Image.asset(
                        'assets/images/jcb.jpg', fit: BoxFit.cover,),
                      Image.asset(
                        'assets/images/jcb.jpg', fit: BoxFit.cover,),
                      Image.asset(
                        'assets/images/jcb.jpg', fit: BoxFit.cover,),
                    ],
                  ),
                ),


              ),
              title: Text('JCB', style: WhiteBoldText()),
            ),
            SliverList(delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.green,
                            ),
                            Text('Kathmandu'),
                            // SizedBox(width: 60,),
                            // Text('JCB', style: BlackBoldText()),
                            Spacer(),
                            Image.asset(
                              'assets/images/label_icon.png',
                              height: 15,
                              width: 15,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Rs. 24,000',
                              style: GreenBoldText(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(),


                        ItemDescription(
                          text1: 'Hyundai',
                          text2: 'MAKE',
                          text3: 'Tuscan',
                          text4: 'Model',
                        ),
                        ItemDescription(
                          text1: '2008',
                          text2: 'YEAR OF  MANUFACTURE',
                          text3: 'New',
                          text4: 'CONDITION',
                        ),

                        ItemDescription(
                          text1: '',
                          text2: '',
                          text3: 'Yes',
                          text4: 'EXCHANGE POSSIBLE',
                        ),
                        Divider(),
                        Text(
                          'Descriptions*',
                          style: BlackBoldText(),
                        ),
                        TextFormField(
                          maxLines: 7,
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                            helperMaxLines: 7,
                            hintText: "Tell us more about the conditions of your vehicle",
                            fillColor: Colors.white,
                            enabledBorder: new OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            //fillColor: Colors.green
                          ),

                          keyboardType: TextInputType.text,
                          style: GreenBoldText(),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                            child: ContainerForQuestionAnswer(
                              sometext: 'Post ad like this',
                              your_icon: Icon(
                                Icons.post_add,
                                color: Colors.green,
                              ),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                            child: ContainerForQuestionAnswer(
                              your_icon: Icon(
                                Icons.send,
                                color: Colors.green,
                              ),
                              sometext: 'Post your question',
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          readOnly: true,
                          maxLines: 7,
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.green),
                            ),
                            helperMaxLines: 7,
                            hintText: "Your Question Answered",
                            fillColor: Colors.white,
                            enabledBorder: new OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            //fillColor: Colors.green
                          ),

                          keyboardType: TextInputType.text,
                          style: GreenBoldText(),
                        ),
                        SizedBox(height: 15,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About this seller",
                              style: GreenBoldText(),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/images/beard_man.jpg'),
                                      radius: 36,
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      'See all ads',
                                      style: GreenBoldText(),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RowWithIconsText(
                                      your_icon: Icon(
                                        Icons.person_outline_outlined,
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                      your_text: 'Name:  Bahadur Nepal',
                                    ),
                                    SizedBox(height: 10,),
                                    RowWithIconsText(
                                      your_icon: Icon(
                                        Icons.follow_the_signs,
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                      your_text: 'Private | Follow this seller',
                                    ),
                                    SizedBox(height: 10,),
                                    RowWithIconsText(
                                      your_icon: Icon(
                                        Icons.phone_android_rounded,
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                      your_text: 'phone: 98123456789',
                                    ),
                                    SizedBox(height: 10,),
                                    RowWithIconsText(
                                      your_icon: Icon(
                                        Icons.watch_later_outlined,
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                      your_text: 'Last seen: 1  week ago',
                                    ),
                                    SizedBox(height: 10,),
                                    RowWithIconsText(
                                      your_icon: Icon(
                                        Icons.remove_red_eye_outlined,
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                      your_text: '1000 views',
                                    ),
                                    SizedBox(height: 10,),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]
            ),
            ),
          ],
        ),
      ),
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

WhiteBoldText() {
  return TextStyle(
    fontSize: 14,
    fontFamily: 'Helvetica',
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );
}

GreenBoldText() {
  return TextStyle(
    fontSize: 14,
    fontFamily: 'Helvetica',
    color: Colors.green,
    fontWeight: FontWeight.w400,
  );
}
