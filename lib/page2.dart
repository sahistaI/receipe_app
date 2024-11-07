import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:navigation/fruit_toast.dart';
import 'package:navigation/page3_recipe.dart';

class Page2 extends StatefulWidget{
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  final List<Map<String,String>> dishes = [
    {'imagePath':'assets/images/dish_1.jpg', 'name':'Avacado Toast',
    'rating': '4','time':'20 min'},
    {'imagePath':'assets/images/dish_2.jpg', 'name':'Fruit Toast',
    'rating': '3','time':'25 min'},
    {'imagePath':'assets/images/dish_3.jpg', 'name':'Burger',
    'rating': '3','time':'40 min'},
    {'imagePath':'assets/images/dish_4.jpg', 'name':'Fruit Salad',
    'rating': '2','time':'15 min'},
    {'imagePath':'assets/images/dish_5.jpg', 'name':'Omlete',
    'rating': '1','time':'30 min'},
    {'imagePath':'assets/images/dish_6.jpg', 'name':'Chicken Meat',
    'rating': '3','time':'20 min'},
    {'imagePath':'assets/images/dish_7.jpg', 'name':'Cheese Burger',
    'rating': '4','time':'25 min'},
    {'imagePath':'assets/images/dish_8.jpg', 'name':'Idli',
    'rating': '5','time':'15 min'},
    {'imagePath':'assets/images/dish_9.jpg', 'name':'Chicken Soup',
    'rating': '4','time':'20 min'},
    {'imagePath':'assets/images/fruits 10.jpg', 'name':'Vegetable Salad',
    'rating': '3','time':'22 min'},
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title:Text(''),
        ),
        body: Column(
          children: [
            Container(
              child: Text('What what would you like to cook?',
              style: TextStyle(
                fontSize: 24,
              ),),
            ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            color: Colors.grey[200],
            child: Row(
              children: [
                Icon(Icons.search,color: Colors.black,),
                Container(
                  child: Text('Find a recipe',style: TextStyle(
                      color:Colors.black,fontSize: 18
                  ),),
                ),
              ],
            ),
          ),
        ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Most Popular',style: TextStyle(
                    fontSize: 20
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('View All',style: TextStyle(
                      fontSize: 20
                  ),),
                ),
              ],
            ),
            SizedBox(
              height:15 ,
            ),
            SizedBox(
              height:280,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        if (index ==0) {
                          return Page3Recipe(image:"assets/images/dish_1.jpg",);
                        }
                        else if (index==1){
                        return FruitToast(image: "assets/images/dish_2.jpg",);
                        }
                        else
                          {
                            return Text("No Data");
                          }
                      },

                      ));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(11),
                            child: Image.asset(dishes[index]['imagePath']!,
                            height: 180,
                            width: 160,
                            fit: BoxFit.cover,),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(dishes[index]['name']!,
                        style:TextStyle(
                          fontSize: 16
                        ),),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children:[
                          for(int i=1;i<=5;i++)
                            Icon( i<=int.parse(dishes[index]['rating']!) ?
                            Icons.star: Icons.star_border,
                              color: Colors.yellow[600],
                              size: 16,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(Icons.access_time,size: 16,color: Colors.grey[600],),
                            SizedBox(width: 5,),
                            Text(dishes[index]['time']!,
                            style: TextStyle(
                              fontSize: 14,color: Colors.grey[600]
                            ),)
                          ],
                        ),

                      ],
                    ),
                  );
                },

              ),
            ),

            Column(
              children: [
                TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(text: "All Recipes"),
                    Tab(text: "Meat"),
                    Tab(text: "Salad"),
                    Tab(text: "Soups"),
                  ],
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                _buildRecipeList(dishes),
                _buildRecipeList(dishes.where((dish)=>dish['name']!.contains('Meat')).toList()),
                _buildRecipeList(dishes.where((dish)=>dish['name']!.contains('Salad')).toList()),
                _buildRecipeList(dishes.where((dish)=>dish['name']!.contains('Soup')).toList()),
              
              ]),
            )


          ],

        ),
        
      
      ),
    );
  }
}


Widget _buildRecipeList (List<Map<String, String>> filterDishes){
  return ListView.builder(
      itemCount: filterDishes.length,
      itemBuilder: (context,index){
        return ListTile(
          leading: Image.asset(filterDishes[index]['imagePath']!,
            width: 50,fit: BoxFit.cover,
          ),
          title: Text(filterDishes[index]['name']!),
          subtitle: Text('${filterDishes[index]['time']} | Rating: ${filterDishes[index]['rating']}'),
        );
      });
}