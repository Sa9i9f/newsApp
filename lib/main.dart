import 'package:flutter/material.dart';
import 'package:newprojprogworld/screens/onboarding.dart';
import 'package:newprojprogworld/utilities/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:newprojprogworld/screens/home_screen.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool( 'seen' );
  Widget _screen;
  if( seen == null || seen == false ){
    _screen = onBording();
  }else{
    _screen = HomeScreen();
  }
  runApp( newprojprogworld( _screen ) );
}
class newprojprogworld  extends StatelessWidget {
  final Widget _screen;
  newprojprogworld(this._screen);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:this._screen,  //
      theme: AppTheme.appTheme,
    );
  }

}
