import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  final String textDisplay;
  const DrawerPage({super.key, required this.textDisplay});

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
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/ann-danilina-hzQ1VAEJoW4-unsplash.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Text(widget.textDisplay,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  height: 8),
            ),
          ),
          _DrawerListTile(
            icon: Icons.person_outlined,
            title: widget.textDisplay,
          ),
          const Divider(),
          const _DrawerListTile(
            icon: Icons.add,
            title: "Add Account",
          ),
          const _DrawerListTile(
            icon: Icons.account_circle_outlined,
            title: "My Account",
          ),
          const Divider(),
          const _DrawerListTile(
            icon: Icons.group_add_outlined,
            title: "New Group",
          ),
          const _DrawerListTile(
            icon: Icons.contacts_outlined,
            title: "Contacts",
          ),
          const _DrawerListTile(
            icon: Icons.call_end_outlined,
            title: "Calls",
          ),
          const _DrawerListTile(
            icon: Icons.bookmark_add_outlined,
            title: "Saved Messages",
          ),
          const _DrawerListTile(
            icon: Icons.settings_outlined,
            title: "Settings",
          ),
          const Padding(
            padding: EdgeInsets.only(top: 120),
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
          const Center(
              child: Text(
            "WISPOTECH",
            style: TextStyle(fontWeight: FontWeight.w900),
          )),
          const SizedBox(height: 10,)
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
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ListTile(
        leading: Icon(widget.icon),
        title: Text(widget.title),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
