import 'package:flutter/material.dart';
import 'package:desktop/utils.dart';

class Products_screen extends StatefulWidget {
  const Products_screen({Key? key}) : super(key: key);

  @override
  State<Products_screen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<Products_screen> {
  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        iconTheme: const IconThemeData(
            color: Colors.white
        ),
        title: const Text('Products',style: const TextStyle(
            color: Colors.white
        ),),
      ),

      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                color: Colors.purpleAccent,
                height: double.infinity,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/products.png',height: 100,),
                        ],
                      ),
                      const SizedBox(height: 40),


                      CustomTextField(
                        text: 'Category ID',
                        keyboardType: TextInputType.text,
                        controller: nameController,
                      ),

                      const SizedBox(height: 20,),
                      CustomTextField(
                        text: 'Category Name',
                        keyboardType: TextInputType.text,
                        controller: nameController,
                      ),
                      const SizedBox(height: 20,),
                      Container(
                          width: 600,
                          child: ElevatedButton.icon(onPressed: (){}, icon:const Icon(Icons.add_box_rounded), label: const Text("ADD")))
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.all(10),
                color: Colors.purpleAccent,
                child: ListView(
                  children: [
                    ListTile(
                      trailing: Text('Price'),
                      textColor: Colors.white,
                      leading: Icon(Icons.person,size: 20,color: Colors.white,),
                      subtitle: Text('Time'),

                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),  ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                    ListTile(
                      title: Text('Saved Data '),
                    ),
                  ],
                ),


              ),
            ),
          ],
        ),
      ),

    );
  }
}

