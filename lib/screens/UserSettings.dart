import 'package:flutter/material.dart';
import 'package:todo_app/screens/Menu.dart';
import 'package:todo_app/screens/User.dart';

class UserSettings extends StatefulWidget {
  UserSettings({Key key}) : super(key: key);

  @override
  _UserSettingsState createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Container(
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.all(0),
          child: Menu(),
        ),
        appBar: AppBar(
          title: Text("User Settings"),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
          leading: IconButton(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 8),
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              }),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height /
                    MediaQuery.of(context).size.width),
            padding: EdgeInsets.all(100),
            child: FloatingActionButton.extended(
                backgroundColor: Colors.purpleAccent,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => User()));
                },
                label: Row(
                  children: <Widget>[Text("LogOut"), Icon(Icons.highlight_off)],
                )),
          ),
        ),
      ),
    );
  }
}
