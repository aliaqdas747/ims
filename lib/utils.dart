import 'package:flutter/material.dart';

class main_containers extends StatelessWidget {
   final String imagePath;
   final String title;
   final VoidCallback onTab;





  const main_containers({super.key, required this.imagePath, required this.title, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return    InkWell(
      onTap: onTab,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5,

            )
          ],
          color: Colors.purpleAccent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath,height: 100,width: 100,),
            Text(title,style: TextStyle(
                fontSize: 30,
                color: Colors.white
            ),),
          ],
        ),
        margin: EdgeInsets.all(10),
        height: 200,width: 300,),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final  TextInputType keyboardType;

  // Constructor to receive the text and controller
  const CustomTextField({Key? key,

    required this.text,
    required this.keyboardType,
    required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,

        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
    color: Colors.grey.shade500,
    ),

    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
          cursorColor: Colors.white,
          controller: controller,

          keyboardType: keyboardType,
          style: TextStyle(color: Colors.white,fontSize: 20), // Set the text color of entered text to white
          decoration: InputDecoration(
            labelText: text,
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.white, // Set the desired border color here
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
    ),
    );
  }
}