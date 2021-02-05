import 'package:eFresh/src/FruitDetails.dart';
import 'package:flutter/material.dart';

class Fruits extends StatefulWidget {
  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {

  List<String> fruitList = [
    "Apple",
    "Banana",
    "Lime",
    "Pears",
    "Pineapple",
    "Mango",
    "Grapes",
    "Lemon",
    "Orange",
    "Avocado",
    "Papaya"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fruits", style: TextStyle(fontSize: 30),),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListView.builder(
            itemCount: fruitList.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)),
                      color: Colors.blue,
                    ),
                    child: FlatButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => FruitDetails(fruit: fruitList[index], selectedIndex: index,)));

                        },
                        child: Text(fruitList[index], style: TextStyle(fontSize: 20, color: Colors.white),),
                    ),
                  ),
                ),
              );
            }
          ),
        ),
      );
  }
}
