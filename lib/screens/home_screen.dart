import 'package:flutter/material.dart';
import 'package:newprojprogworld/utilities/app_theme.dart';
import 'package:newprojprogworld/screens/home_tabs/whats_new.dart';
import 'package:newprojprogworld/screens/home_tabs/favourites.dart';
import 'package:newprojprogworld/screens/home_tabs/popular.dart';
import 'package:newprojprogworld/shared_ui/Navigation_drawer.dart';


class HomeScreen extends StatefulWidget  {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: (){},),
          IconButton(icon: Icon(Icons.more_vert),onPressed: (){},),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [

          Tab(text: "WHAT'S NEW  "),
          Tab(text: "POPULAR"  ),
          Tab(text: "FAVOURITES"),
        ],
        controller: _tabController,
        ),
      ),

      drawer: NavigationDrawer(),

      body:
        Center(
          child: TabBarView(children: [
            WhatsNew(),
            Popular(),
            Favouritres(),
      ],
              controller: _tabController,
          ),
        )
    );
  }
}
