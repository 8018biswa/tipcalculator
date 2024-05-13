import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var billAmtControll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: getTitlepart1()),
              Expanded(
                  flex: 5,
                  child: getTipBoardpart2()),
              Expanded(
                  flex: 2,
                  child:getEnterbillpart3() ),
              Expanded(
                  flex: 4,
                  child: Row()),
              Expanded(
                  flex: 2,
                  child: Container(color: Colors.grey,)),
            ],
          ),
        ),
      ),
    );
  }
  
  ///part 1....
  Widget getTitlepart1(){return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset("assets/images/hat.webp",width: 100,),
      SizedBox(width: 0,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text.rich(
            TextSpan(
                text: "Mr",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 22),
                children: [
                  TextSpan(
                    text: "TIP",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),
                  ),
                ]
            ),
          ),
          Text("Calculator",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 22),)
        ],
      ),
    ],
  );
  }

  ///part 2...
Widget getTipBoardpart2(){
    return Card(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(34)
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Totalp/person",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
              Text.rich(TextSpan(text: "\$",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),
                  children: [
                    TextSpan(text: "000",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 38))
                  ]
              )),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Totalp bill",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
                      Text.rich(TextSpan(text: "\$",style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.w900),
                          children: [
                            TextSpan(text: "000",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 38))
                          ]
                      )),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Totalp tip",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16),),
                      Text.rich(TextSpan(text: "\$",style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.w900),
                          children: [
                            TextSpan(text: "000",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 38))
                          ]
                      )),
                    ],
                  ),
                ],)

            ],
          ),
        ),
      ),
      elevation: 7,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(34)
      ),
    );
}
///part 3...
Widget getEnterbillpart3(){
    return Row(
      children: [
        Expanded(
          child: Text.rich(
            TextSpan(
                text: "Enter\n",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 22),
                children: [
                  TextSpan(
                    text: "your bill",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                  ),
                ]
            ),
          ),),
        Expanded(
            flex: 3,
            child: TextField(
              controller: billAmtControll,
              decoration: InputDecoration(fillColor: Colors.white,
                  filled: true,
                  prefixText: "\$",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        style: BorderStyle.none,
                        color: Colors.white,

                      )
                  )),
            ))
      ],
    );
}
}

