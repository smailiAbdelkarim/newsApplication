import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class favourites extends StatefulWidget {
  @override
  _favouritesState createState() => _favouritesState();
}

class _favouritesState extends State<favourites> {

  List<Color> colorList = [
    Colors.red,
    Colors.teal,
    Colors.deepOrange,
    Colors.indigo,
    Colors.brown,
    Colors.purple
  ];
  Random rand = Random();
  Color _getRandomColor(){
    return colorList[rand.nextInt(colorList.length)];
  }
  @override
  Widget build(BuildContext context) {
   return ListView.builder(
       itemBuilder: (context,position){
         return Card(
           child: Container(
             padding: EdgeInsets.all(16),
             child: Column(
               children: <Widget>[

                 _authorRow(),
                 _newsRow(),
               ],
             ),
           ),
         );
       },
     itemCount: 20,
   );
  }
  Widget _authorRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/home.jpeg'),
                  fit: BoxFit.cover
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(0,-6),
                      child:
                      Text("karim smaili",
                        style: TextStyle(color: Colors.grey),)),
                  Row(
                    children: <Widget>[
                      Text("15 min .",style: TextStyle(color: Colors.grey),),
                      Text("Life Style",style: TextStyle(color:_getRandomColor()),)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        IconButton(
          icon: Icon(Icons.bookmark_border),
          color: Colors.grey,
          onPressed: (){},
        ),

      ],
    );

  }
  Widget _newsRow(){
  return Container();
  }
}
