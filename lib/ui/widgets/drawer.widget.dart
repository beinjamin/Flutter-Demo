import 'package:flutter/material.dart';
import 'package:flutter_demo/config/global.params.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.white, Colors.deepOrange]),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      //backgroundImage: AssetImage("images/logo.png"),
                      radius: 50,
                    ),
                    CircleAvatar(
                      //backgroundImage: AssetImage("images/profile.png"),
                      radius: 50,
                    ),
                  ],
                ),
              )),
          ...(GlobalParams.menus as List).map((item) {
            return Column(
              children: [
                ListTile(
                  title: Text(
                    '${item['title']}',
                    style: TextStyle(fontSize: 22),
                  ),
                  leading: item['icon'],
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.orange,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, "${item['route']}");
                  },
                ),
                Divider(color: Colors.deepOrange, height: 4)
              ],
            );
          })
        ],
      ),
    );
  }
}
