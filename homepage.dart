import 'package:drawer/page1.dart';
import 'package:drawer/page2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.white,
                ),
                title: Text(
                  'Page 1',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (content) => PageOne()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text(
                  'Page 2',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (content) => Page2()));
                },
              ),
            ],
          ),
        ),
      ),
    ) //

        ;
  }
}
