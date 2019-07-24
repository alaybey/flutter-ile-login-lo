import 'package:flutter/material.dart';
import 'package:login/login_page.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final top = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/lolo.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Tebrikler',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final tekst = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Hoşgeldin lo',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final menu = Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.all(1.0),
        children: <Widget>[
          Container(
            height: 120,
            child: DrawerHeader(
              child: Text('Test',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 36)),
            ),
          ),
          ListTile(
            title: Text('först'),
            onTap: () {
              Navigator.of(context).pushNamed(LoginPage.tag);
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('sekont'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue.withOpacity(0.40),
          Colors.black26.withOpacity(0.20),
        ]),
      ),
      child: Column(
        children: <Widget>[top, welcome, tekst],
      ),
    );

    return Scaffold(
      body: body,
      drawer: menu,
      appBar: AppBar(
          title: Text(
        "Bize de Lolo",
      )),

      /* appBar: new AppBar(
        leading: Builder(
        builder: (context) => IconButton(
      icon: new Icon(Icons.settings),
      onPressed: () => Scaffold.of(context).openDrawer(),
    ),
    ),
    */
    );
  }
}
