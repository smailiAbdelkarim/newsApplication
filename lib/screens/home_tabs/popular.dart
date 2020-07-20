import 'package:flutter/material.dart';
import 'package:newsApplication/screens/home_tabs/whatsnew.dart';
class popular extends StatefulWidget {
  @override
  _popularState createState() => _popularState();
}

class _popularState extends State<popular> {
  @override
  Widget build(BuildContext context) {
   return ListView.builder(itemBuilder: (context,position){

          return _drawSingleRow();

   },
   itemCount: 20,
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
}
