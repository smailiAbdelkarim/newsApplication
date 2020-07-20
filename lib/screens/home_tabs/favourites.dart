import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class favourites extends StatefulWidget {
  @override
  _favouritesState createState() => _favouritesState();
}

class _favouritesState extends State<favourites> {
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
            )
          ],
        ),
        IconButton(
          icon: Icon(Icons.bookmark_border),
          onPressed: (){},
        ),

      ],
    );

  }
  Widget _newsRow(){
  return Container();
  }
}
