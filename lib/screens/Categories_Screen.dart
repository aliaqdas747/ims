import 'package:flutter/material.dart';

class Category_screen extends StatefulWidget {
  const Category_screen({super.key});

  @override
  State<Category_screen> createState() => _category_screenState();
}

class _category_screenState extends State<Category_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.purpleAccent,
        title: const Text('Categories',style: TextStyle(color: Colors.white),),

        bottomOpacity: 111,
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.purpleAccent,
                height: double.infinity,
                width: 300,
                child: const Padding(
                  padding:  EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      CircleAvatar(
                        backgroundImage:AssetImage('assets/images/logo3.png'),
                        radius: 60,

                      ),
                      Text('Inventory Management System',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),)

                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:  EdgeInsets.only(left: 20),
                        child: Text('My Inventory',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.purpleAccent),),
                      ),
                      SizedBox(height: 30,),
                      Wrap(
                        alignment: WrapAlignment.spaceEvenly,

                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Handle item 1 tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Handle item 2 tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          // Add more ListTile items as needed
        ],
      ),
    );
  }
}