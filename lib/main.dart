import 'package:flutter/material.dart';
import 'package:newsApplication/screens/home_screen.dart';
import 'package:newsApplication/screens/onboarding.dart';

import 'package:shared_preferences/shared_preferences.dart';

main()async{

 WidgetsFlutterBinding.ensureInitialized();   

    
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = prefs.getBool('seen');

    Widget _screen ;

if(seen == null || seen == false){
    _screen = OnBoarding();
}
else {
   
_screen = HomeScreen();
}

  runApp(NewsApp(_screen));
}

class NewsApp extends StatelessWidget{
  NewsApp(this._screen);

 final  Widget _screen;

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home:_screen,
     );
  }
}

