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
            children: <Widget>[
              _drawHeader(),


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
}
