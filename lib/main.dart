import 'package:desktop/utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Inventory'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

var newDrawer = Drawer(
  backgroundColor: Colors.grey.shade200,
  child:  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const DrawerHeader(child: Icon(Icons.account_circle,size: 100,color: Colors.purpleAccent,),
      ),

      ListTile(leading: Icon(Icons.home),
          title: Text('H O M E',style: TextStyle(color: Colors.black),)),
      ListTile(leading: Icon(Icons.chat),
          title: Text('C h a t')),
      ListTile(leading: Icon(Icons.settings),
          title: Text('s e t t i n g s')),
      ListTile(leading: Icon(Icons.logout),
          title: Text('L o g o u t ')),


    ],
  ),);
var cont =    Container(
  margin: EdgeInsets.all(10),
  height: 200,width: 300,color: Colors.purpleAccent,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        drawer :newDrawer,
      body:  Container(

        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.purpleAccent,
                height: double.infinity,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage:AssetImage('assets/images/logo3.png'),
                        radius: 60,

                      ),
                      Text('Inventory Managment System',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),)
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('My Inventory',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.purpleAccent),),
                      ),
                      Container(
                        child: Wrap(
                         alignment: WrapAlignment.spaceEvenly,
                          children: [
                          main_containers(imagePath: 'assets/images/products.png', title: 'Products'),
                            main_containers(imagePath: 'assets/images/categories.png', title: 'Categories'),

                            main_containers(imagePath: 'assets/images/sales.png', title: 'Sales'),

                            main_containers(imagePath: 'assets/images/cart.png', title: 'Cart'),

                            main_containers(imagePath: 'assets/images/suppliers.png', title: 'Suppliers'),

                            main_containers(imagePath: 'assets/images/report.png', title: 'Reports'),
                         Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Colors.purpleAccent,
                           ),
                           margin: EdgeInsets.all(10),
                           height: 100,
                           width: double.infinity,

                         )



                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      )
    );
  }
}
