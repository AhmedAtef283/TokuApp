import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/screens/Colors_Page.dart';
import 'package:toku/screens/Family_Members_Page.dart';
import 'package:toku/screens/Numbers_Page.dart';
import 'package:toku/screens/Pharses_Page.dart';

import '../Components/Components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Toku App"),
      ),
      body: Column(
        children: [
          CategoryContainer(
              color: Colors.orange, text: 'Numbers', onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return NumbersPage();
                }));
          }),
          CategoryContainer(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return Family_Members();
                }
              ));
            },
            color: Colors.green,
            text: 'Family Members',
          ),
          CategoryContainer(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Colors_Screen();
              }));
            },
            text: 'Colors',
            color: Colors.deepPurple,
          ),
          CategoryContainer(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return PhrasesPage();
              }));
            },
            color: Colors.blue,
            text: 'Pharses',
          ),
        ],
      ),
    );
  }
}
