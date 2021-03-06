import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:newsApplication/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../PageModel.dart';
import 'package:page_view_indicator/page_view_indicator.dart';


class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding>{
List<PageModel> pages;  // list of PageModel object

ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);



 void_addPages(){ //  objects initialisation
      pages= List<PageModel>();
      pages.add(PageModel("Welcome !", "Hello dear in our simple app , enjoy with us", Icons.ac_unit, "assets/images/bg3.jpeg"));
      pages.add(PageModel("Enjoy", "Enjoy with cup of tea",Icons.access_time,"assets/images/bg2.jpeg"));
      pages.add(PageModel("World", "Everything in this world is behind you",  Icons.access_time, "assets/images/bg4.jpeg"));
      pages.add(PageModel("keep", "Any news facing you in this screen",Icons.brightness_4,"assets/images/bg4.jpeg"));

  }

  @override
  Widget build(BuildContext context) {

   void_addPages();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            body: PageView.builder(
              itemCount: pages.length,
              onPageChanged: ( index ){
               _pageViewNotifier.value = index;
              },
              itemBuilder: (context , index){
                     return Stack(
                       children: <Widget>[


                                Container(
                               decoration:BoxDecoration(
                                 image: DecorationImage(
                                   image: ExactAssetImage(
                                       pages[index].images),
                                   fit: BoxFit.cover,

                                 ),
                               ),

                               ),
                               //opacity:5,

                             Column(
                               crossAxisAlignment: CrossAxisAlignment.center,  //
                               mainAxisAlignment: MainAxisAlignment.center, // relation with content
                               children: <Widget>[
                               Transform.translate(
                                 child: Icon(
                                   pages[index].icons,
                                   size: 100,
                                   color: Colors.white,
                                 ),
                                 offset: Offset(0,-100),
                               ),
                               Align(

                                 child: Text(pages[index].titles,

                                     style:TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold
                                 ),
                                 textAlign: TextAlign.center,
                                 ),
                                 alignment: Alignment.center,
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 48,right: 48,top:18),
                                 child: Text(
                                   pages[index].descriptions,
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

          ),
           Transform.translate(
             offset: Offset(0,105),
             child: Align(
                 alignment: Alignment.center,
                  child: _displayPageIndicators(pages.length),




             ),
           ),

           Align(
             alignment:Alignment.bottomCenter,
             child: Padding(
               padding: const EdgeInsets.only(bottom:24,right:5,left: 5),
               child: SizedBox(
                 width: double.infinity,
                 height: 50,
                 child: RaisedButton(
                  
                   onPressed: (){
                     Navigator.push(
                         context,
                           MaterialPageRoute(
                             builder: (context){
                               _updateSeen();
                               return HomeScreen();
                             }
                           ) );

                   },
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
  Widget _displayPageIndicators(int length){

    return PageViewIndicator(
      pageIndexNotifier:_pageViewNotifier,
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
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );

  }
  void _updateSeen() async{
   SharedPreferences prfs = await SharedPreferences.getInstance();
     prfs.setBool('seen', true);

  }
}

