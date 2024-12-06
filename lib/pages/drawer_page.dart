import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext innercontext) {
    return Drawer(
      width: 300.0,
      backgroundColor: Colors.white,
      child: ListView(
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/ann-danilina-hzQ1VAEJoW4-unsplash.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Text(
              "Vera Elona",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  height: 8),
            ),
          ),
          _DrawerListTile(
            icon: Icons.person_outlined,
            title: "Vera Elona",
          ),
          Divider(),
          _DrawerListTile(
            icon: Icons.add,
            title: "Add Account",
          ),
          _DrawerListTile(
            icon: Icons.account_circle_outlined,
            title: "My Account",
          ),
          Divider(),
          _DrawerListTile(
            icon: Icons.group_add_outlined,
            title: "New Group",
          ),
          _DrawerListTile(
            icon: Icons.contacts_outlined,
            title: "Contacts",
          ),
          _DrawerListTile(
            icon: Icons.call_end_outlined,
            title: "Calls",
          ),
          _DrawerListTile(
            icon: Icons.bookmark_add_outlined,
            title: "Saved Messages",
          ),
          _DrawerListTile(
            icon: Icons.settings_outlined,
            title: "Settings",
          ),
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Made with ",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Center(
              child: Text(
            "KERMANSHAH",
            style: TextStyle(fontWeight: FontWeight.w900),
          )),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}

class _DrawerListTile extends StatefulWidget {
  final IconData icon;
  final String title;
  // final Function _ListTileNavigator;

  const _DrawerListTile({required this.icon, required this.title});

  @override
  State<_DrawerListTile> createState() => _DrawerListTileState();
}

class _DrawerListTileState extends State<_DrawerListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(widget.icon),
      title: Text(widget.title),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
