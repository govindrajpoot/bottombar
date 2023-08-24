/*
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(body: Column(children: [
        Text("My profile"),
      ],),),
    );
  }
}
*/


import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';



class Profile_Screen extends StatefulWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                    height: 50,
                    width: double.infinity,
                    // color: Colors.pink,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        // border: Border.all(
                        //     color: Colors.pink,
                        //     width: 1.0,
                        //     style: BorderStyle.solid
                        // ),
                        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10,),bottomRight: Radius.circular(10))

                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom:15,left: 14),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("My Profile",style: GoogleFonts.lato(fontWeight: FontWeight.w800,fontSize: 18,color:Colors.white),),
                        ],
                      ),
                    )),
                Container(
                  padding: EdgeInsets.only(left: 16,right: 16),
                  child: Column(children: [
                    SizedBox(height: 20,),
                    InkWell(
                      // onTap: (){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Your_ProfileScreen()));
                      // },
                      child: Row(
                        children: [
                          Container(

                            child: ClipRRect(
                                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(64,),bottomRight: Radius.circular(64),topRight: Radius.circular(64),topLeft: Radius.circular(5))
                                ,
                                child: Image.network("https://images.pexels.com/photos/1172253/pexels-photo-1172253.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",fit: BoxFit.fill,height: 100,width: 100,)),
                          ),
                          SizedBox(width: 20,),
                          Column(children: [
                            Text("Govind Kumar",style: GoogleFonts.mukta(fontSize:20,fontWeight: FontWeight.w400 ),),
                            Text("+91 9000000000",style: GoogleFonts.mukta(fontSize:16,fontWeight: FontWeight.w400 ),),

                          ],)
                        ],
                      ),
                    ),
                    Divider(),
                    SizedBox(height: 20,),
                    Row(children: [
                      SvgPicture.asset('assets/svgs/booking.svg'),
                      SizedBox(width: 14,),
                      Text("My Bookings",style: GoogleFonts.lato(fontWeight: FontWeight.w400,fontSize: 18),),
                    ],),
                    SizedBox(height: 20,),
                    Divider(),
                    SizedBox(height: 20,),
                    InkWell(
                      // onTap: (){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting_Screen()));
                      // },
                      child: Row(children: [
                        SvgPicture.asset('assets/svgs/setting.svg'),
                        SizedBox(width: 14,),
                        Text("Settings",style: GoogleFonts.lato(fontWeight: FontWeight.w400,fontSize: 18),),
                      ],),
                    ),
                    SizedBox(height: 20,),
                    Divider(),
                    SizedBox(height: 20,),

                    InkWell(
                      // onTap: (){
                      //   Navigator.push(context,MaterialPageRoute(builder: (context)=>Support_Screen()));
                      // },
                      child: Row(children: [
                        SvgPicture.asset('assets/svgs/support.svg'),
                        SizedBox(width: 14,),
                        Text("Support",style: GoogleFonts.lato(fontWeight: FontWeight.w400,fontSize: 18),),
                      ],),
                    ),
                    SizedBox(height: 20,),

                    Divider(),
                    SizedBox(height: 20,),
                    Row(children: [
                      SvgPicture.asset('assets/svgs/policy.svg'),
                      SizedBox(width: 14,),
                      Text("Policy",style: GoogleFonts.lato(fontWeight: FontWeight.w400,fontSize: 18),),
                    ],),
                    SizedBox(height: 20,),
                    Divider(),
                    SizedBox(height: 20,),
                    Row(children: [
                      SvgPicture.asset('assets/svgs/helpicon.svg'),
                      SizedBox(width: 14,),
                      Text("Get Help",style: GoogleFonts.lato(fontWeight: FontWeight.w400,fontSize: 18),),
                    ],),
                    SizedBox(height: 20,),

                    Divider(),
                    SizedBox(height: 20,),
                    Row(children: [
                      SvgPicture.asset('assets/svgs/abouticon.svg'),
                      SizedBox(width: 14,),
                      Text("About ",style: GoogleFonts.lato(fontWeight: FontWeight.w400,fontSize: 18),),
                    ],),
                    SizedBox(height: 20,),
                    Divider(),
                    SizedBox(height: 20,),
                    Row(children: [
                      SvgPicture.asset('assets/svgs/logout.svg'),
                      SizedBox(width: 14,),
                      InkWell(
                          onTap: (){
                            // Get.to(Sign_In_Screen());
                          },
                          child: Text("Log out ",style: GoogleFonts.lato(fontWeight: FontWeight.w400,fontSize: 18),)),
                    ],),
                    SizedBox(height: 20,),
                    Divider(),
                    SizedBox(height: 20,),


                  ],),)


              ],
              //      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(64,),bottomRight: Radius.circular(64),topRight: Radius.circular(64))
            ),
          ),
        ),
      ),
    );
  }
}
