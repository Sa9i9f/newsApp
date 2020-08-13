import 'package:flutter/material.dart';
class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<String> itemTitlle = [
    'Explore',
    'Logout',
    'Home',
    'video',
    'photo',
    'News',
    'sitting'

  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 77,left: 23),
        child: ListView.builder(itemBuilder: (context,position){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(itemTitlle[position],style: TextStyle(color: Colors.grey.shade700,fontSize: 22),),
            trailing:Icon(Icons.chevron_right,color: Colors.grey.shade500) ,
           onTap: (){},
          ),
        );
        },
        itemCount: itemTitlle.length,),
      ),
    );
  }
}

