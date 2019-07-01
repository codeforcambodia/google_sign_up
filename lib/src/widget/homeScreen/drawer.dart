import 'package:flutter/material.dart';
import './home_screen.dart';
import '../../provider/hexaColorConvert.dart';
import '../../provider/provider_widget.dart';

final home = home_screen();

Widget drawerWidget(BuildContext context) {
  return Drawer(
    child: new Column(
      children: <Widget>[
        //Header of drawer
        new DrawerHeader(
          decoration: homeBackground(),
          margin: EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
              new CircleAvatar(
                  minRadius: 50.0,
                  maxRadius: 50.0,
                  backgroundImage: AssetImage('assets/avatar.png')
                  // widget.dataFromGG != null ? NetworkImage(widget.dataFromGG.photoUrl) : ,
                  ),
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
              ),
              // Text('${widget.dataFromGG != null ? widget.dataFromGG.displayName : 'User name'}')
            ],
          ),
        ),

        //Expand listview
        Expanded(
          child: Container(
            decoration: homeBackground(),
            child: ListView(
              children: <Widget>[
                //Body of drawer
                ListTile(
                  contentPadding: EdgeInsets.only(left: 20.0),
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.home),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                      ),
                      Text('Home')
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 20.0),
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.account_circle),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                      ),
                      Text('Profile')
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 20.0),
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.settings),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                      ),
                      Text('Setting')
                    ],
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
        signOutButton(context),
      ],
    ),
  );
}

Widget signOutButton(BuildContext context) {
  var circular = home_screen();
  return Container(
    decoration: homeBackground(),
    child: FlatButton(
      padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
      color: Color(hexColor('#ED213A')),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.exit_to_app),
          Container(
            margin: EdgeInsets.only(right: 10.0),
          ),
          Text(
            'Sign out',
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0),
          )
        ],
      ),
      onPressed: () {
        // home.scaffoldKey
      },
      // onPressed: (){
      //   circular.sig
      // }
    ),
  );
}