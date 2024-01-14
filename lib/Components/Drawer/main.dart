import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.60,
      child: ListView(
        children: [
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage('assets/image/fundo_drawer.jpg'),
                      width: MediaQuery.of(context).size.width * 0.59,
                      height: MediaQuery.of(context).size.height * 0.25,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.59,
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(205, 0, 0, 0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 8, bottom: 8),
                        height: MediaQuery.of(context).size.height * 0.24,
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                image:
                                    AssetImage('assets/image/perfil_link.png'),
                                width: MediaQuery.of(context).size.width * 0.1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Carlos Eduardo Guedes',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ListTile(
            title: Text('Opção 1'),
            onTap: () {
              // Faz algo quando a opção 2 é clicada
            },
          ),
        ],
      ),
    );
  }
}
