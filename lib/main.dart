import 'package:eFresh/src/Fruits.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home()
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("E-fresh", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal),),
              SizedBox(
                height: 100,
              ),
              GestureDetector(
                child: Card(
                  elevation: 5,
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/Fruits.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Fruits()));
                },
              ),
            ],
          )
      ),
    );
  }
}


