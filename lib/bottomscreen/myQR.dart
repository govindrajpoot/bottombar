import 'package:flutter/material.dart';

class MyQRscreen extends StatefulWidget {
  const MyQRscreen({super.key});

  @override
  State<MyQRscreen> createState() => _MyQRscreenState();
}

class _MyQRscreenState extends State<MyQRscreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(body: Center(
        child: Container(
          decoration: BoxDecoration(
             // color: Color(0xffa1e8ff),

              borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey)
          ),

          height: 320,
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
Image.asset("assets/qrcode.png"),

              // CircleAvatar(
              //   radius: 25,
              //   backgroundImage:
              //   AssetImage("assets/qrcode.png"),
              //
              //   // NetworkImage('https://picsum.photos/id/237/200/300'),
              // ),
              Text("John"),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.phone_android),
                Text("+918976543212"),
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.mail),
                Text("appsinova@gamil.com"),
              ],),

            ],),),
      ),),
    );
  }
}
