import 'package:flutter/material.dart';

import '../Components/Components.dart';
import '../Models/Numbers_Model.dart';
class Family_Members extends StatelessWidget {
  const Family_Members({Key? key}) : super(key: key);
  final List<Numbers_model> family = const [
    Numbers_model(image: 'assets/images/family_members/family_grandfather.png', En_Name:  'Grand Father', Jap_Name: 'Ojīsan' ,sound:'grand father.wav'),
    Numbers_model(image: 'assets/images/family_members/family_grandmother.png', En_Name:  'Grand Mother', Jap_Name: 'O bāchan' ,sound: 'grand mother.wav'),
    Numbers_model(image: 'assets/images/family_members/family_father.png', En_Name:  'Father', Jap_Name:'Chichioya' ,sound:'father.wav' ),
    Numbers_model(image: 'assets/images/family_members/family_mother.png', En_Name:  'Mother', Jap_Name: 'Hahaoya',sound:'mother.wav' ),
    Numbers_model(image: 'assets/images/family_members/family_son.png', En_Name:  'Son', Jap_Name: 'Musuko' ,sound:'son.wav' ),
    Numbers_model(image: 'assets/images/family_members/family_daughter.png', En_Name:  'Daughter', Jap_Name: 'Musume' ,sound:'daughter.wav'),
    Numbers_model(image: 'assets/images/family_members/family_older_brother.png', En_Name:  'Older Brother', Jap_Name: 'Ani', sound:'older bother.wav'),
    Numbers_model(image: 'assets/images/family_members/family_older_sister.png', En_Name:  'Older Sister', Jap_Name: 'Ane' ,sound:'older sister.wav'),
    Numbers_model(image: 'assets/images/family_members/family_younger_brother.png', En_Name:  'Younger Brother', Jap_Name: 'Otōto' ,sound:'younger brohter.wav'),
    Numbers_model(image: 'assets/images/family_members/family_younger_sister.png', En_Name:  'Younger Sister', Jap_Name: 'Imōto' ,sound:'younger sister.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Family Members"),
        backgroundColor:const  Color(0xff46322B),
      ),
      body: ListView.builder(
        itemBuilder: (context , index){
          return
            Item(
              Item_Type: 'family_members',
              color: Color(0xff558B37),
              number: family[index],
            ) ;
        },
        itemCount: family.length,


      ),
    );
  }
}
