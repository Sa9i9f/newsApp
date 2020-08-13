import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _drawHeader(),
          Padding(
            padding: const EdgeInsets.only(top: 16,left: 16),
            child: Text('Top Stories',style: TextStyle(color:Colors.grey.shade600,fontWeight: FontWeight.w500,fontSize: 16),),
          ),
          _drawTopStory(),
          _drawTopStory(),
          _drawTopStory(),
          _drawRecentUpdataCard(Colors.deepOrange),
          _drawRecentUpdataCard(Colors.teal),




        ],

      ),
    );
  }

  Widget _drawHeader(){
    TextStyle _headerTitle = TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w700);
    TextStyle _headerDescriotion = TextStyle(color: Colors.grey,fontSize: 16);
  return   Container(
    width: MediaQuery.of(context).size.width,
    height:240,
    decoration: BoxDecoration(
      image: DecorationImage(image:ExactAssetImage('images/bg.jpg') ,fit: BoxFit.cover),

    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.only(left: 55,right: 55),
            child: Text('welcome for everybody this is News app ',style: _headerTitle,textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 34,right: 34),
            child: Text('you can add new report with picture and text you can surfing and writing new news',style: _headerDescriotion,textAlign: TextAlign.center,),
          ),
        ],
      ),
    ),
  );
  }

 Widget _drawTopStory() {
     return Container(
    color: Colors.grey.shade100,
   child: Column(
     children: <Widget>[

       Padding(
         padding: EdgeInsets.only(right: 8,left: 8),
         child: Card(
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
       ),
     ],
   ),
  );

 }
 Widget _drawRecentUpdataCard(Color color){

    return Card(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: ExactAssetImage('images/bg.jpg'),fit: BoxFit.cover),

          ),
          width: double.infinity,
          height: 200,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16,top: 5,right: 15),
          child: Container(
            padding: EdgeInsets.only(left: 28,right: 28,top: 3,bottom: 3),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(6),

            ),
            child: Text('Soprt',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
          ),

        ),
        Padding(
          padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 9),
          child: Text(
            'welcome the Number of showing ',style: TextStyle(fontSize: 18),
          ),

        ),
        Padding(
          padding: const EdgeInsets.only(left: 16,right: 16,top: 6),
          child: Row(
            children: <Widget>[
              Icon(Icons.timer,color: Colors.grey,),

              Text('15 MIN',style: TextStyle(color: Colors.grey),),
            ],
          ),
        ),

      ],
    ),
    );

 }

}

