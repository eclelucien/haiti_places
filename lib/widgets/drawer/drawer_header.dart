import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/citadelle.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.2),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    width: 70,
                    height: 70,
                    child: Image.network(
                      'https://www.gazetasp.com.br/_midias/jpg/2021/06/25/540x370/1_bandeira_do_haiti_com_textura_de_tecido_a_acenar_7594_58-770073.jpg',
                      fit: BoxFit.cover,
                    )),
                Container(
                    width: 170,
                    height: 60,
                    color: Color.fromRGBO(255, 255, 255, 0.2),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "La République",
                            style: TextStyle(color: Colors.blue[900]),
                          ),
                          Text(" d'Haiti",
                              style: TextStyle(color: Colors.red))
                        ],
                      ),
                    ))
              ],
            ),
          )),
        ]));
    ;
  }
}
