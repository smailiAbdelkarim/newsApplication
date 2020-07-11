import 'package:flutter/material.dart';
import 'package:newsApplication/shared_ui/navigation_drawer.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("Explore"),
        actions: <Widget>[
          IconButton(icon: Icon(
                 Icons.search,
          ),
            onPressed: (){},
          )
        ],
      ),
      body: Center(
        child: Container(
          child: Text("Smaili abdelkarim android programmer"
          ,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23
            ),),

        ),
      ),
    );
  }
}
