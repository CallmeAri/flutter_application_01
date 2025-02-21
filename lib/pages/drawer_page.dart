import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({
    super.key,
  });

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
                  image: AssetImage("assets/images/TQN.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Text(
              " ",
              style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  height: 8),
            ),
          ),
          _DrawerListTile(
            // icon: Icons.add,
            title: "Update KPI",
          ),
                    Divider(),
          _DrawerListTile(
            // icon: Icons.settings_outlined,
            title: "Manage User",
          ),
          _DrawerListTile(
            // icon: Icons.settings_outlined,
            title: "Claim Submistion",
          ),
          _DrawerListTile(
            // icon: Icons.settings_outlined,
            title: "Tech Overal Status",
          ),
          _DrawerListTile(
            // icon: Icons.settings_outlined,
            title: "Account recievable",
          ),
          _DrawerListTile(
            // icon: Icons.settings_outlined,
            title: "Add Supporting Documents",
          ),
          Divider(),
          _DrawerListTile(
            // icon: Icons.person_outlined,
            title: "Import Jira ",
          ),
          _DrawerListTile(
            // icon: Icons.account_circle_outlined,
            title: "Import Data",
          ),
          _DrawerListTile(
            // icon: Icons.group_add_outlined,
            title: "Export Data",
          ),
          Divider(),
          _DrawerListTile(
            // icon: Icons.contacts_outlined,
            title: "Original SOR",
          ),
          _DrawerListTile(
            // icon: Icons.settings_outlined,
            title: "SOR Tracker",
          ),
          _DrawerListTile(
            // icon: Icons.call_end_outlined,
            title: "Job Card",
          ),
          _DrawerListTile(
            // icon: Icons.bookmark_add_outlined,
            title: "BER",
          ),
          Divider(),
          _DrawerListTile(
            // icon: Icons.settings_outlined,
            title: "Revision 1",
          ),
          _DrawerListTile(
            // icon: Icons.settings_outlined,
            title: "Revision 2",
          ),
          Divider(),
          _DrawerListTile(
            // icon: Icons.settings_outlined,
            title: "Photo Report",
          ),
          _DrawerListTile(
            // icon: Icons.settings_outlined,
            title: "Technician Report",
          ),
          _DrawerListTile(
            // icon: Icons.settings_outlined,
            title: "Follow UP Report",
          ),
          _DrawerListTile(
            // icon: Icons.settings_outlined,
            title: "Outstanding Report",
          ),
          _DrawerListTile(
            // icon: Icons.settings_outlined,
            title: "RFI  Report",
          ),

          Padding(
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
          Center(
              child: Text(
            "WISPOTECH",
            style: TextStyle(fontWeight: FontWeight.w900),
          )),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class _DrawerListTile extends StatefulWidget {
  // final IconData icon;
  final String title;
  // final Function _ListTileNavigator;

  const _DrawerListTile({/*required this.icon*/ required this.title});

  @override
  State<_DrawerListTile> createState() => _DrawerListTileState();
}

class _DrawerListTileState extends State<_DrawerListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ListTile(
        // leading: Icon(widget.icon),
        title: Text(widget.title),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
