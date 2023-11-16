//import 'package:account/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDrawer(),
    );
  }
}
class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              width: double.infinity,
              child: DrawerHeader(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                          backgroundColor: Colors.green,
                        backgroundImage: AssetImage("assets/image2.png"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Technicalhub"),
                      Text("support@technicalhub.io"),
                    ],
                  )),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text("Item1"),
              subtitle: Text("Subtitle1"),
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyItem1()));
              },
            ),
            ListTile(
              leading: Icon(Icons.my_library_books_rounded),
              title: Text("Item2"),
              subtitle: Text("Subtitle2a"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyItem2()));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite_outline),
              title: Text("Item3"),
              subtitle: Text("Subtitle3"),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Item4"),
              subtitle: Text("Subtitle4"),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Item5"),
              subtitle: Text("Subtitle5"),
              onTap: (){

              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Drawer with Drawer.builder"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
class MyItem1 extends StatefulWidget {
  const MyItem1({super.key});

  @override
  State<MyItem1> createState() => _MyItem1State();
}

class _MyItem1State extends State<MyItem1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item Details"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300,),
            Icon(Icons.home,size: 50,),
            Text("Title:Item1"),
            Text("Subtitle:Subtitle1"),
          ],
        ),
      ),
    );
  }
}
class MyItem2 extends StatefulWidget {
  const MyItem2({super.key});

  @override
  State<MyItem2> createState() => _MyItem2State();
}

class _MyItem2State extends State<MyItem2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item Details"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300,),
            Icon(Icons.my_library_books_rounded,size: 50,),
            Text("Title:Item2"),
            Text("Subtitle:Subtitle2"),
          ],
        ),
      ),
    );
  }
}
