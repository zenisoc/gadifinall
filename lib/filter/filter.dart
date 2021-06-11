import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Filter extends StatefulWidget {
  const Filter({Key key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.filter_list_sharp),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Filter by"),
                  ),
                  Spacer(),
                  ClipRRect(
                    borderRadius:  BorderRadius.circular(10),
                    child: Container(color: Colors.grey,
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Cancel"),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomConatiner(text: "Condition"),
              CustomConatiner(text: "Make"),
              CustomConatiner(text: "Model"),
              CustomConatiner(text: "Transmission"),
              CustomConatiner(text: "Body Styles"),
              CustomConatiner(text: "Fuel Types"),
              CustomConatiner(text: "Price"),
              CustomConatiner(text: "Bussiness Type"),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius:  BorderRadius.circular(10),
                  child: Container(
                    width:  MediaQuery.of(context).size.width,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(child: Text("Apply Filters",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                      )),
                ),
              )

            ],
          ),
        )
      ),
    );
  }
}
class JenishBottomSheet{
  static getBottomSheet(String Title){
    return Get.bottomSheet(
      Container(
        height: Get.height,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.arrow_back_ios,size: 17,),
                  SizedBox(
                    width: 5,
                  ),
                  Text(Title,style: TextStyle(fontWeight: FontWeight.bold),),
                  Spacer(),
                  ClipRRect(
                    borderRadius:  BorderRadius.circular(10),
                    child: Container(color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Cancel"),
                        )),
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
void displayBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        return SafeArea(
          child: Scaffold(
            body: Container(
             child: Padding(
               padding: const EdgeInsets.all(14.0),
               child: Column(
                 children: [
                   SizedBox(
                     height: 20,
                   ),
                   Row(
                     children: [
                       Icon(Icons.arrow_back_ios,size: 17,),
                       SizedBox(
                         width: 5,
                       ),
                       Text("Condition",style: TextStyle(fontWeight: FontWeight.bold),),

                       Spacer(),
                       ClipRRect(
                         borderRadius:  BorderRadius.circular(10),
                         child: Container(color: Colors.grey,
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text("Cancel"),
                             )),
                       )

                     ],
                   )
                 ],
               ),
             ),
            ),
          ),
        );
      });
}
 class CustomConatiner extends StatelessWidget {
  String text;
  CustomConatiner({this.text});
   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(10.0),
       child: Container(
         child:  Row(
           children: [
             Text(text,style: TextStyle(fontWeight: FontWeight.bold),),
             Spacer(),
             InkWell(
               onTap: (){
                 JenishBottomSheet.getBottomSheet('Conditions');
               },
                 child: Icon(Icons.arrow_forward_ios,size: 17,)),
           ],
         )
       ),
     );
   }
 }

