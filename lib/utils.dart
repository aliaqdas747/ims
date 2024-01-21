import 'package:flutter/material.dart';

class main_containers extends StatelessWidget {
   final String imagePath;
   final String title;



  const main_containers({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return    Container(
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
      height: 200,width: 300,);
  }
}
