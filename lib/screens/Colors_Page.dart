import 'package:flutter/material.dart';

import '../Components/Components.dart';
import '../Models/Numbers_Model.dart';
class Colors_Screen extends StatelessWidget {
  const Colors_Screen({Key? key}) : super(key: key);
  final List<Numbers_model> Colooor = const [
    Numbers_model(image: 'assets/images/colors/color_black.png', En_Name:  'Black', Jap_Name: 'Buraku' ,sound:'black.wav'),
    Numbers_model(image: 'assets/images/colors/color_brown.png', En_Name:  'Brown', Jap_Name: 'Chairo' ,sound: 'brown.wav'),
    Numbers_model(image: 'assets/images/colors/color_dusty_yellow.png', En_Name:  'dusty Yellow', Jap_Name:'Hakori ppoi kiiro' ,sound:'dusty yellow.wav' ),
    Numbers_model(image: 'assets/images/colors/color_gray.png', En_Name:  'Grey', Jap_Name: 'Gure',sound:'gray.wav' ),
    Numbers_model(image: 'assets/images/colors/color_green.png', En_Name:  'Green', Jap_Name: 'Midori' ,sound:'green.wav' ),
    Numbers_model(image: 'assets/images/colors/color_red.png', En_Name:  'Red', Jap_Name: 'Aka' ,sound:'red.wav'),
    Numbers_model(image: 'assets/images/colors/color_white.png', En_Name:  'White', Jap_Name: 'Shiroi', sound:'white.wav'),
    Numbers_model(image: 'assets/images/colors/yellow.png', En_Name:  'Yellow', Jap_Name: 'Yeloowaa' ,sound:'yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colors"),
        backgroundColor:const  Color(0xff46322B),
      ),
      body: ListView.builder(
        itemBuilder: (context , index){
          return
            Item(
              Item_Type: 'colors',
              color: Colors.deepPurple,
              number: Colooor[index],
            ) ;
        },
        itemCount: Colooor.length,


      ),
    );
  }
}
