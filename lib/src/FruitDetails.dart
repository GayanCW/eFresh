import 'package:flutter/material.dart';

class FruitDetails extends StatefulWidget {
  FruitDetails({this.fruit, this.selectedIndex});
  final String fruit;
  final int selectedIndex;
  @override
  _FruitDetailsState createState() => _FruitDetailsState();
}

class _FruitDetailsState extends State<FruitDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.fruit, style: TextStyle(fontSize: 30),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.asset(
                    "assets/fruits/${widget.fruit}.jpg",
                    fit: BoxFit.contain,
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 80,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Standard ph value", style: TextStyle(fontSize: 20),),
                      Text("2.90 - 3.30", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Card(
                elevation: 5,
                child: Container(
                  height: 80,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Checked ph value", style: TextStyle(fontSize: 20),),
                      Text("3.11", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
