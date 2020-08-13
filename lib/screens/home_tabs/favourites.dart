import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favouritres extends StatefulWidget {
  @override
  _FavouritresState createState() => _FavouritresState();
}

class _FavouritresState extends State<Favouritres> {
  List<Color> colorsList = [
    Colors.teal,
    Colors.deepOrangeAccent,
    Colors.deepPurple,
    Colors.lightBlue,
  ];
  Random random = Random();

  Color _getRandomColor() {
    return colorsList[random.nextInt(colorsList.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(

          child: Container(
            padding: EdgeInsets.only(top: 11, left: 11),
            child: Column(
              children: <Widget>[
                _autherItemRow(),
                _drawTopStory(),
              ],
            )
          ),
        );
      },
      itemCount: 20,
    );
  }


  Widget _autherItemRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(

          children: <Widget>[
            Container(

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('images/bg.jpg'),

                ),
                shape: BoxShape.circle,
              ),
              width: 50,
              height: 50,
              margin: EdgeInsets.only(right: 16),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('add new friend to bookmark ',
                  style: TextStyle(color: Colors.grey),),
                SizedBox(height: 8,),
                Row(

                  children: <Widget>[
                    Text('15 MIN . ', style: TextStyle(color: Colors.grey),),
                    Text('friend', style: TextStyle(color: Colors.lightBlue),),
                  ],
                ),
              ],
            ),
          ],
        ),
        IconButton(icon: Icon(Icons.bookmark_border, color: Colors.grey,),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _drawTopStory() {
    return Row(

      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 22,top: 4),
          child: SizedBox(

            child: Image(image: ExactAssetImage('images/bg3.jpg'),
              fit: BoxFit.cover,),
            width: 100,
            height: 100,
          ),
        ),

        SizedBox(width: 16,),
        Expanded(
          child: Expanded(
            child: Column(

              children: <Widget>[
                Transform.translate(child: Text(' you can rewriting new context and try agin and agein  ',style: TextStyle(fontWeight: FontWeight.w500),),offset:Offset(0,-13)  ,

                ),
                SizedBox(height: 22,),
                Text('there are a lot of opportunte just you try any keep going you will successfully new context and try agin and agein',maxLines: 4,),

              ],
            ),
          ),
        ),

      ],
    );
  }
}