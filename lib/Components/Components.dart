import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/Numbers_Model.dart';

class CategoryContainer extends StatelessWidget {
  CategoryContainer({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        child: Text(
          "${text}",

          style:const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        color: color,
      ),
    );
  }
}


class Item extends StatelessWidget {
  const Item({Key? key , required this.number ,required this.color, required this.Item_Type });
  final Numbers_model number;
  final Color color ;
  final Item_Type;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(

            child: Image.asset(number.image),
            color: Colors.white38,
          ),
          Padding(
            padding: const EdgeInsets.only(left :15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.Jap_Name,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.En_Name,
                  style:const  TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: (){
              try{
                AudioCache audio = AudioCache(prefix:'assets/sounds/${Item_Type}/' );
                audio.play(number.sound);
              }catch(error){
                print(error);
              }

            },
            icon: const Icon(
                Icons.play_arrow ,color: Colors.white,size: 35),

          ),

        ],
      ),
    );
  }
}


class PharsesItem extends StatelessWidget {
  const PharsesItem({Key? key , required this.phrases ,required this.color, required this.Item_Type });
  final Phrases_model phrases;
  final Color color ;
  final Item_Type;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left :15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrases.Jap_Name,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  phrases.En_Name,
                  overflow: TextOverflow.ellipsis,
                  style:const  TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: (){
              try{
                AudioCache audio = AudioCache(prefix:'assets/sounds/${Item_Type}/' );
                audio.play(phrases.sound);
              }catch(error){
                print(error);
              }

            },
            icon: const Icon(
                Icons.play_arrow ,color: Colors.white,size: 35),

          ),

        ],
      ),
    );
  }
}


