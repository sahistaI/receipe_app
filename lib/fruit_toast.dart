import 'package:flutter/material.dart';

class FruitToast extends StatelessWidget{

  String image;

  FruitToast({
   required this.image,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 400,
                    child:Image.asset(image,fit: BoxFit.cover,),
                  ),
                  Positioned(
                      top: 40,
                      left:1,
                      child: IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back,color: Colors.black,
                          size: 25,),
                      )),

                  Positioned(
                    top:280,
                    left: 60,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white,
                          boxShadow:[
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                offset: Offset(0,3)
                            )
                          ]
                      ),

                      width: 290,
                      height: 300,

                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Fruit Toast', style: TextStyle(
                              fontSize: 22,color: Colors.black
                          ),
                          ),
                          SizedBox(height:1,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star,size: 20,color: Colors.yellow,),
                              Icon(Icons.star,size: 20,color: Colors.yellow,),
                              Icon(Icons.star,size: 20,color: Colors.yellow,),
                              Icon(Icons.star,size: 20,color: Colors.yellow,),
                              Icon(Icons.star,size: 20,color: Colors.yellow,),
                            ],
                          ),
                          SizedBox(height:10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.access_time),
                              Text('5 min',style: TextStyle(
                                  fontSize: 16
                              ),),
                              SizedBox(width:25),
                              Text('9 Ingredients',style: TextStyle(
                                  fontSize: 16
                              ),),
                            ],
                          )

                        ],
                      ),
                    ),
                  )

                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text( 'Ingredients',style: TextStyle(
                        fontSize:25,fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 5),

                    Text( 'Step 1',style: TextStyle(
                        fontSize:20, color: Colors.blueGrey,fontWeight: FontWeight.bold
                    ),textAlign:TextAlign.justify,),

                    SizedBox(height: 5),

                    Text( 'Toast the slices of bread in a toaster or on a skillet until golden brown and crispy. Set aside',style: TextStyle(
                      fontSize:18, color: Colors.blueGrey,
                    ),),
                    SizedBox(height: 5),

                    Text( 'Step 2',style: TextStyle(
                        fontSize:20, color: Colors.blueGrey,fontWeight: FontWeight.bold
                    ),textAlign:TextAlign.justify,),

                    SizedBox(height: 5),

                    Text( 'Slice the banana and apple or Pear. If using Strawberries, slice them as well.Rinse the berries under cold water and pat dry.',style: TextStyle(
                      fontSize:18, color: Colors.blueGrey,
                    ),),
                    SizedBox(height: 5),

                    Text( 'Step 3',style: TextStyle(
                        fontSize:20, color: Colors.blueGrey,fontWeight: FontWeight.bold
                    ),textAlign:TextAlign.justify,),

                    SizedBox(height: 5),

                    Text('Spread a layer of Greek Yogurt or Cream Cheese on each slice of toasted bread.Top each slice of bread with prepared fruits. You can layer them however you like. ',style: TextStyle(
                      fontSize:18, color: Colors.blueGrey,
                    ),),



                  ],



                ),
              )


            ],

          ),
        )
    );
  }

}