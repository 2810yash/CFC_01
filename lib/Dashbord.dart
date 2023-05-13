import 'package:carbon_footprint/Calculator.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text('CFC'),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              currentAccountPicture: CircleAvatar(
                foregroundImage: NetworkImage(
                    "https://e7.pngegg.com/pngimages/312/283/png-clipart-man-s-face-avatar-computer-icons-user-profile-business-user-avatar-blue-face.png"),
              ),
              accountName: Text("Yash Wairagade"),
              accountEmail: Text("yash2810203@gmail.com"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.bubble_chart_rounded),
              title: Text("About Us"),
              onTap: () {},
            ),
            ListTile(
                leading: Icon(Icons.account_circle_rounded),
                title: Text("Profile"),
                onTap: () {}
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) {
              //             return AboutUs();
              //           })
              //   );
              // },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.calculate),
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.black87,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return Calculator();
            }),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.home),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  Text("Home", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.account_circle_rounded),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  Text("Profile", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://i0.wp.com/www.flutterbeads.com/wp-content/uploads/2021/11/set-background-image-flutter-hero.jpeg?fit=1920%2C1280&ssl=1",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              right: 50.0,
              top: 20.0,
              left: 50.0,
              child: Column(
                children: [
                  Text(
                    "About Us",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30.0),
                  ),
                  Text(
                    "One person's carbon impact is a teeny tiny drop in the giant lake-sized bucket of global emissions. But! Your personal carbon footprint absolutely matters. That is Why we built this Calculator to calculate your Carbon footprints",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.green[700]),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
