import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:newsApplication/utilities/app_theme.dart';
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
              _drawTopStories(),

            ],



          ),




    );
  }
  Widget _drawHeader(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height * 0.25,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left:48,right: 48),
                child: Text('smaili abdelkarim',style:AppTheme.titleStyle,textAlign: TextAlign.center,)),
            SizedBox(height: 14,),
            Padding(
              padding: EdgeInsets.only(left:29,right: 29),
                child: Text("Computer Sience student , 1 Master networking and telecommunication and DSC Lead",style: AppTheme.descriptionStyle,textAlign: TextAlign.center))
          ],

        ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/images/london.jpeg'),
              fit:BoxFit.cover

          )

      ),
    );
  }
  Widget _drawTopStories(){
      return Container(
        //color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left:16,top:16),
                child:_drawSectionTitle('Top Stories'),
            ),
               Padding(
                 padding: EdgeInsets.all((8)),
                 child:Card(
                   child: Column(
                     children: <Widget>[
                       _drawDevider(),
                       _drawSingleRow(),
                       _drawDevider(),
                       _drawSingleRow(),
                       _drawDevider(),
                       _drawSingleRow(),
                       _drawDevider(),
                       _drawSingleRow(),
                       _drawDevider(),
                       _drawSingleRow(),
                       _drawDevider(),
                       _drawSingleRow(),
                     ],
                   ),
                 ),

               ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 16,top:8,bottom: 8),
                    child: _drawSectionTitle("Recent updates")
                  ),

                  _drawRecentUpdateCard(Colors.deepOrange),
                  _drawRecentUpdateCard(Colors.green),
                  SizedBox(
                    height: 16,
                  )

                ],
              ),
            ),


          ],

        ),

      );


  }
  Widget _drawSingleRow(){
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 125,
            height: 125,
            child:Image(
              image: ExactAssetImage('assets/images/nowel.jpeg'),
            ),
          ),
          Expanded(

            child: Padding(
              padding: EdgeInsets.only(left:8),
              child: Column(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(0,-12),
                    child: Text("The Global world Warning Annual summit",
                      maxLines: 2,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:Colors.black,
                          fontSize: 18
                      ),),
                  ),
                  Transform.translate(
                    offset: Offset(0,10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Smaili abdelkarim"),
                        Row(

                          children: <Widget>[
                            Icon(Icons.access_time),
                            SizedBox(
                              width: 10,
                            ),
                            Text("15 min")
                          ],
                        )
                      ],
                    ),
                  )


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _drawDevider(){
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey.shade100,
    );
  }

  Widget _drawSectionTitle(String title) {
    return  Text(

      title,
      textAlign:TextAlign.left
      ,style: TextStyle(color:Colors.grey.shade600,fontSize: 18,fontWeight: FontWeight.w700),);
  }

  Widget _drawRecentUpdateCard(Color color) {
    return Card(
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height:MediaQuery.of(context).size.height*0.25,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:ExactAssetImage('assets/images/london.jpeg'),
                fit:BoxFit.cover
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:16,top: 16),
            child: Container(
              padding: EdgeInsets.only(left:24,right:24,bottom: 1,top:1),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Text("Sport",style: TextStyle(color:Colors.white),),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16,right: 16,top:8,bottom: 8),
            child: Text("This is so hard aah",style: TextStyle(
              fontSize: 18,fontWeight: FontWeight.w500
            ),),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16,right: 16,top:8,bottom: 8),
            child: Row(
              children: <Widget>[
                Icon(Icons.access_time,color: Colors.grey,),
                Text("15 min",style: TextStyle(color:Colors.grey),)
              ],
            ),
          )


        ],
      ),
    );
  }
}
