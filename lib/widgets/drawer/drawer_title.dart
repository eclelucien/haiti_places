import 'package:flutter/material.dart';

class CustomDrawerTile extends StatelessWidget {
  final GestureTapCallback? onTap;
  final IconData? iconData; //icone
  final String? title;

  const CustomDrawerTile({this.iconData, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(width: 0.5, color: Colors.grey)),
      child: ListTile(
        tileColor: Colors.grey[800],
        title: Center(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      Icon(
                        iconData,
                        size: 20,
                        color: Colors.blue[600],
                      ),
                      // Icon(iconData, color: Colors.white),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          title ?? "",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child:
                      Icon(Icons.arrow_forward_ios_outlined, color: Colors.red),
                )
              ],
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
