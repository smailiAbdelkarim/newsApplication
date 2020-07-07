import 'package:flutter/material.dart';


class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (context , index){
                   return Stack(
                     children: <Widget>[
                           Container(
                            decoration: BoxDecoration(
                              image : DecorationImage(
                                image: ExactAssetImage('assets/images/pg.png'),
                                fit: BoxFit.cover,


                              ),
                              
                              ), 
                           ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.center,  // 
                             mainAxisAlignment: MainAxisAlignment.center, // relation with content
                             children: <Widget>[
                             Icon(Icons.ac_unit),
                             Text("Welcome"),
                             Text("Making friends is easy as waving your hand back and forth in easy step"),
                           ],
                           )
                     ],
                     );
            },
               itemCount: 4,
            
            ),
        ],
      ),
    );
  }
}