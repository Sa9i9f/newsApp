import 'package:flutter/material.dart';
class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,position){
      return Card(
        child: _drawTopStory(),
      );
    },
      itemCount: 20,);
  }


  Widget _drawTopStory() {
    return Padding(

      padding: EdgeInsets.only(right: 8,left: 8),
      child: Card(
        //color: Colors.grey.shade100,
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Row(

            children: <Widget>[
              SizedBox(

                child: Image(image: ExactAssetImage('images/bg3.jpg'),fit: BoxFit.cover,),
                width: 124,
                height: 124,
              ),
              SizedBox(width: 16,),
              Expanded(
                child: Column(

                  children: <Widget>[
                    Text(' you can rewriting new context and try agin '),
                    SizedBox(height: 22,),
                    Row(

                      children: <Widget>[
                        Text('is anyone here '),
                        SizedBox(width: 33,),
                        Icon(Icons.timer),
                        Text("15 min"),
                      ],
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );

  }
}
