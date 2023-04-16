import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/Models/Numbers_Model.dart';

import '../Components/Components.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<Numbers_model> numbers = const [
    Numbers_model(image: 'assets/images/numbers/number_one.png', Jap_Name: 'ichi', En_Name: 'one' ,sound:'number_one_sound.mp3' ),
    Numbers_model(image: 'assets/images/numbers/number_two.png', Jap_Name: 'ni', En_Name: 'two' ,sound: 'number_two_sound.mp3'),
    Numbers_model(image: 'assets/images/numbers/number_three.png', Jap_Name: 'san', En_Name: 'three' ,sound:'number_three_sound.mp3' ),
    Numbers_model(image: 'assets/images/numbers/number_four.png', Jap_Name: 'shi', En_Name: 'four',sound:'number_four_sound.mp3' ),
    Numbers_model(image: 'assets/images/numbers/number_five.png', Jap_Name: 'Go', En_Name: 'five' ,sound:'number_five_sound.mp3' ),
    Numbers_model(image: 'assets/images/numbers/number_six.png', Jap_Name: 'roku', En_Name: 'six' ,sound:'number_six_sound.mp3'),
    Numbers_model(image: 'assets/images/numbers/number_seven.png', Jap_Name: 'sebun', En_Name: 'seven', sound:'number_seven_sound.mp3'),
    Numbers_model(image: 'assets/images/numbers/number_eight.png', Jap_Name: 'hachi', En_Name: 'eight' ,sound:'number_eight_sound.mp3'),
    Numbers_model(image: 'assets/images/numbers/number_nine.png', Jap_Name: 'kyu', En_Name: 'nine' ,sound:'number_nine_sound.mp3'),
    Numbers_model(image: 'assets/images/numbers/number_ten.png', Jap_Name: 'ju', En_Name: 'ten' ,sound:'number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers"),
        backgroundColor:const  Color(0xff46322B),
      ),
      body: ListView.builder(
        itemBuilder: (context , index){
          return
            Item(
              Item_Type: 'numbers',
              number: numbers[index],
              color: Colors.orange,
            ) ;
        },
        itemCount: numbers.length,


      ),
    );
  }
}

