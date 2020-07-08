import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


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
            itemCount: 4,
            itemBuilder: (context , index){
                   return Stack(
                     children: <Widget>[
                           Container(
                           decoration:BoxDecoration(
                             image: DecorationImage(
                               image: ExactAssetImage('assets/images/home.jpeg'),
                               fit: BoxFit.cover
                             )
                           )
                           ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.center,  // 
                             mainAxisAlignment: MainAxisAlignment.center, // relation with content
                             children: <Widget>[
                             Transform.translate(
                               child: Icon(Icons.ac_unit,
                                 size: 100,
                                 color: Colors.white,
                               ),
                               offset: Offset(0,-100),
                             ),
                             Text("Welcome !",

                                 style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold
                             ),
                             textAlign: TextAlign.center,
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 48,right: 48,top:18),
                               child: Text("Making friends is easy as waving your hand back and forth in easy step",
                               style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 16

                               ),
                               textAlign: TextAlign.center,),
                             ),
                           ],
                           )
                     ],
                     );
            },

            
            ),
           Align(
             alignment:Alignment.bottomCenter,
             child: Padding(
               padding: const EdgeInsets.only(bottom:24,right:5,left: 5),
               child: SizedBox(
                 width: double.infinity,
                 height: 50,
                 child: RaisedButton(
                   onPressed: (){},
                   color: Colors.red,
                   child: Text(
                     "GET STARTED",
                     style: TextStyle(
                       color: Colors.white,
                       letterSpacing: 1,
                       fontSize: 16

                     ),
                   ),
                 ),
               ),
             ),
           ),
        ],
      ),
    );
  }
}