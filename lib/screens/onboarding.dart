import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newprojprogworld/pageModel.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
class onBording extends StatefulWidget {
  @override
  _onBordingState createState() => _onBordingState();
}

class _onBordingState extends State<onBording> {

  List<pageModel> pages;
  ValueNotifier<int> _valueNotifier = ValueNotifier(0);

  void _addPages() {
    pages = List<pageModel>();
    pages.add(pageModel('WELCOME',
        "This is new oortanites to you can register and get new skills",
        Icons.ac_unit,
        'images/bg.jpg')
    );
    pages.add(pageModel('ADD FRIEND',
        "This is new opprotantes to you can register and get new skills",
        Icons.person,
        'images/bg.jpg')
    );
    pages.add(pageModel('RESULT',
        "This is new opprotantes to you can register and get new skills",
        Icons.all_inclusive,
        'images/bg3.jpg')
    );
    pages.add(pageModel('TAST',
        "4-This is new opprotantes to you can register and get new skills",
        Icons.arrow_drop_down_circle,
        'images/bg3.jpg')
    );
  }

  @override
  Widget build(BuildContext context) {
    _addPages();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage(pages[index].image),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        child: Icon(
                          pages[index].icon,
                          size: 130,
                          color: Colors.white70,
                        ),
                        offset: Offset(0, -50),
                      ),
                      Text(
                        pages[index].title,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 48),
                      ),
                      Align(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16),
                            child: Text(pages[index].description,
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 22),
                              textAlign: TextAlign.center,
                            ),
                          )
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: pages.length,
            onPageChanged: (index){
              _valueNotifier.value = index;
            },
          ),
          Transform.translate(

            offset: Offset(0, 140),
            child: Align(
              alignment: Alignment.center,
              child: pageIndicator(pages.length),
            ),

          ),
          Align(

            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 22, right: 11, left: 12),
              child: SizedBox(
                width: double.infinity,
                height: 44,
                child: RaisedButton(
                  color: Colors.redAccent,
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      _updateSeen();
                      return HomeScreen();

                    },),);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }



  Widget pageIndicator(int length) {
    return PageViewIndicator(
      pageIndexNotifier: _valueNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 8.0,
          color: Colors.red,
        ),
        
      ),
      
    );
  }
}


void _updateSeen() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool( 'seen' , true);
}


//Widget _drawCircle(Color color) {
//  return Container(
//    margin: EdgeInsets.only(right: 8),
//    width: 15,
//    decoration: BoxDecoration(
//      shape: BoxShape.circle,
//      color: color,
//    ),
//  );
//}