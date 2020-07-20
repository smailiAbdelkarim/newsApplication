import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<String> drawerTitles = [
    "Explore",
    "Headline News",
    "Read Later",
    "Videos",
    "photos",
    "Setting",
    "Layout"


  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Padding(
          padding: EdgeInsets.only(top:80),
          child: ListView.builder(
               itemCount: 7,
              itemBuilder: (context,index){
                 return ListTile(
                   onTap: (){},
                   trailing: Icon(Icons.chevron_right,color: Colors.grey.shade400,),
                 title: Text(drawerTitles[index],style: TextStyle(
                   fontSize: 22,
                   color: Colors.grey.shade700,
                 ),),

                 );
              },
          ),
        ),
    );
  }
}
