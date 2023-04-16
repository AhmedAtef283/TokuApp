import 'package:flutter/material.dart';
import 'package:toku/Components/Components.dart';
import 'package:toku/Models/Numbers_Model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Phrases_model> phrases = const [
    Phrases_model(Jap_Name: 'Kimasu ka', En_Name: 'Are you coming ? ', sound: 'are_you_coming.wav'),
    Phrases_model(Jap_Name: 'Kōdoku suru koto o wasurenaide kudasai', En_Name: 'Don\'t Forget to subscribe', sound: 'dont_forget_to_subscribe.wav'),
    Phrases_model(Jap_Name: 'Go kibun wa ikagadesu ka', En_Name: 'How are you feeling ', sound: 'how_are_you_feeling.wav'),
    Phrases_model(Jap_Name: 'Watashi wa anime ga daisukidesu', En_Name: 'I Love anime', sound: 'i_love_anime.wav'),
    Phrases_model(Jap_Name: 'Puroguramingu ga daisuki', En_Name: 'I love Programming', sound: 'i_love_programming.wav'),
    Phrases_model(Jap_Name: 'Puroguramingu wa kantan', En_Name: 'Programming is easy', sound: 'programming_is_easy.wav'),
    Phrases_model(Jap_Name: 'Namae wa nandesu ka', En_Name: 'What is your name', sound: 'what_is_your_name.wav'),
    Phrases_model(Jap_Name: 'Doko de nani o shite iru no', En_Name: 'Where are you doing', sound: 'where_are_you_going.wav'),
    Phrases_model(Jap_Name: 'Hai, kimasu', En_Name: 'Yes , I\'m Coming', sound: 'yes_im_coming.wav'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases Page'),
        backgroundColor: const  Color(0xff46322B),
      ),
      body: ListView.builder(
        itemBuilder: (context , index){
          return
            PharsesItem(
              Item_Type: 'phrases',
              color: Colors.blue,
               phrases: phrases[index],
            ) ;
        },
        itemCount: phrases.length,


      ),
    );
  }
}
