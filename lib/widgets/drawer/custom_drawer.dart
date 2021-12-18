import 'package:flutter/material.dart';
import 'package:haiti_places/widgets/drawer/drawer_header.dart';
import 'package:haiti_places/widgets/drawer/drawer_title.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          CustomDrawerHeader(),
          Container(
            padding: EdgeInsets.all(16),
            child: Text("Les départements",
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ),
          CustomDrawerTile(
              iconData: Icons.map_rounded, title: 'Ouest', onTap: () {}),
          CustomDrawerTile(
              iconData: Icons.map_rounded, title: 'Artibonite', onTap: () {}),
          CustomDrawerTile(
              iconData: Icons.map_rounded, title: 'Nord', onTap: () {}),
          CustomDrawerTile(
              iconData: Icons.map_rounded, title: 'Sud', onTap: () {}),
          CustomDrawerTile(
              iconData: Icons.map_rounded, title: 'Nippes', onTap: () {}),
          CustomDrawerTile(
              iconData: Icons.map_rounded, title: 'Centre', onTap: () {}),
          CustomDrawerTile(
              iconData: Icons.map_rounded, title: "Grand'Anse", onTap: () {}),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  height: 100,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: //container para o background
                                AssetImage('assets/citadelle.jpg'),
                            fit: BoxFit.cover)),
                    child: Stack(children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            //container para o roda pé
                            image: AssetImage('assets/citadelle.jpg'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
