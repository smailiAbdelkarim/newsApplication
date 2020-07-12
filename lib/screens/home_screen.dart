import 'package:flutter/material.dart';
import 'package:newsApplication/shared_ui/navigation_drawer.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3,vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
       bottom: TabBar(
         indicatorColor: Colors.white,
         controller: _tabController,
         tabs: <Widget>[
           Tab(
             text: "WHAT'S NEW",
           ),
           Tab(
             text: "POPULAR"
           ),
           Tab(
             text: "FAVOURITES",
           ),

         ],


       ),


        title: Text("Explore"),
        actions: <Widget>[
          IconButton(icon: Icon(
                 Icons.search,
          ),
            onPressed: (){},
          ),
          IconButton(icon:Icon(
            Icons.more_vert,
          ),
            onPressed: (){},
          )
        ],
      ),
      body: Center(
        child: Container(
          child: TabBarView(
            children: <Widget>[
            Container(
              color: Colors.amber,
            ),
             Container(
               color:Colors.yellowAccent
             ),
             Container(
               color:Colors.green
             )
            ]
            ,controller: _tabController,
          )

        ),
      ),
    );
  }
}
