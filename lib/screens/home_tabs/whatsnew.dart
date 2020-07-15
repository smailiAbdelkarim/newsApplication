import 'package:flutter/material.dart';
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
            Text('smaili abdelkarim',style:AppTheme.titleStyle),
            Text("Computer Sience student and DSC Lead",style: AppTheme.descriptionStyle,)
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
