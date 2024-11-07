import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/page2.dart';

class Page1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> Page1State();

}
class Page1State extends State<Page1>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
              height: 400,
              child: Image.asset("assets/images/logo.png",fit: BoxFit.cover,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: Colors.blueGrey,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          FloatingActionButton(

            backgroundColor:Colors.green ,
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
          },
            child: Icon(Icons.arrow_right_alt,size:40,color:Colors.black,),
          )
        ],
      ),

    );
  }

}