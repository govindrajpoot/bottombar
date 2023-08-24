import 'dart:async';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  late final PageController pageController;

  ScrollController _scrollController = ScrollController();

  int pageNo = 0;

  Timer? carasouelTmer;

  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == 4) {
        pageNo = 0;
      }
      pageController.animateToPage(
        pageNo,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCirc,
      );
      pageNo++;
    });
  }

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    carasouelTmer = getTimer();



    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        showBtmAppBr = false;
        setState(() {});
      } else {
        showBtmAppBr = true;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  bool showBtmAppBr = true;


  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
      child: Scaffold(body: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Icon(Icons.location_pin,color: Colors.blue,),
            Text("NY11434,USA",style: TextStyle(color: Colors.blue),),
            Image.asset("assets/walk.png",height: 60,width: 110,),
            Icon(Icons.search),
            Icon(Icons.notifications),

          ],),

          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                slider(),
                gridview(),
                staysafe(),
                SizedBox(height: 20,),
              ],),
            ),
          ),
        ],
      ),),
    );
  }


  Widget slider(){
    return SingleChildScrollView(

      controller: _scrollController,
      child: Column(
        children: [

          SizedBox(
            height: 200,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) {
                pageNo = index;
                setState(() {});
              },
              itemBuilder: (_, index) {
                return

                  AnimatedBuilder(
                  animation: pageController,
                  builder: (ctx, child) {
                    return child!;
                  },
                  child: GestureDetector(

                    onPanDown: (d) {
                      carasouelTmer?.cancel();
                      carasouelTmer = null;
                    },
                    onPanCancel: () {
                      carasouelTmer = getTimer();
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        //color: Color(0xff90CDBC),
                      ),
                      child: Image.asset("assets/offer.png",fit: BoxFit.fill,),
                    ),
                  ),
                );
              },
              itemCount: 4,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            List.generate(4,
                  (index) => GestureDetector(
                child: Container(
                  margin: const EdgeInsets.all(2.0),
                  child:
                  Icon(
                    Icons.circle,
                    size: 12.0,
                    color: pageNo == index
                        ? Colors.blue
                        : Colors.grey.shade300,
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
  Widget gridview(){
    return Column(
      children: [
        SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Container(
          decoration: BoxDecoration(
              color: Color(0xffa1e8ff),

              borderRadius: BorderRadius.circular(12)
          ),
          height: 100,
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          CircleAvatar(
            radius: 25,
            backgroundImage:
              AssetImage("assets/mall.png"),

           // NetworkImage('https://picsum.photos/id/237/200/300'),
          ),
              Text("Malls")
        ],),),
        Container(
          decoration: BoxDecoration(
              color: Color(0xffa1e8ff),

              borderRadius: BorderRadius.circular(12)
          ),
          height: 100,
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage:
                AssetImage("assets/saloon.png"),

                // NetworkImage('https://picsum.photos/id/237/200/300'),
              ),
              Text("Saloon")
            ],),),
        Container(
          decoration: BoxDecoration(
              color: Color(0xffa1e8ff),

              borderRadius: BorderRadius.circular(12)
          ),
          height: 100,
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage:
                AssetImage("assets/ic_retail.png"),

                // NetworkImage('https://picsum.photos/id/237/200/300'),
              ),
              Text("Retail")
            ],),),
      ],),
      SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Container(
          decoration: BoxDecoration(
              color: Color(0xffa1e8ff),

              borderRadius: BorderRadius.circular(12)
          ),
          height: 100,
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage:
                AssetImage("assets/zym.png"),

                // NetworkImage('https://picsum.photos/id/237/200/300'),
              ),
              Text("GYM")
            ],),),
        Container(
          decoration: BoxDecoration(
              color: Color(0xffa1e8ff),

              borderRadius: BorderRadius.circular(12)
          ),
          height: 100,
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage:
                AssetImage("assets/groce.png"),

                // NetworkImage('https://picsum.photos/id/237/200/300'),
              ),
              Text("Grocery")
            ],),),
        Container(
          decoration: BoxDecoration(
              color: Color(0xffa1e8ff),

              borderRadius: BorderRadius.circular(12)
          ),
          height: 100,
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage:
                AssetImage("assets/restro.png"),

                // NetworkImage('https://picsum.photos/id/237/200/300'),
              ),
              Text("Restaurant")
            ],),),
      ],),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffa1e8ff),

                  borderRadius: BorderRadius.circular(12)
              ),
              height: 100,
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage:
                    AssetImage("assets/mall.png"),

                    // NetworkImage('https://picsum.photos/id/237/200/300'),
                  ),
                  Text("Malls")
                ],),),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffa1e8ff),

                  borderRadius: BorderRadius.circular(12)
              ),
              height: 100,
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage:
                    AssetImage("assets/saloon.png"),

                    // NetworkImage('https://picsum.photos/id/237/200/300'),
                  ),
                  Text("Saloon")
                ],),),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffa1e8ff),

                  borderRadius: BorderRadius.circular(12)
              ),
              height: 100,
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage:
                    AssetImage("assets/ic_retail.png"),

                    // NetworkImage('https://picsum.photos/id/237/200/300'),
                  ),
                  Text("Retail")
                ],),),
          ],),
    ],);
  }
  Widget staysafe(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //height: 120,

        decoration: BoxDecoration(
          color: Color(0xffd6eef8),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(children: [
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(""),
            Text("Stay Safe"),
            Icon(Icons.cancel),
          ],),
SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage:
                AssetImage("assets/mask.png"),

                // NetworkImage('https://picsum.photos/id/237/200/300'),
              ),
              Text("Always wear a mask")
            ],),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage:
                  AssetImage("assets/washhand.png"),

                  // NetworkImage('https://picsum.photos/id/237/200/300'),
                ),
                Text("Wash hand")
              ],),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage:
                  AssetImage("assets/distance.png"),

                  // NetworkImage('https://picsum.photos/id/237/200/300'),
                ),
                Text("Keep distance \nwith other person")
              ],),

          ],),
SizedBox(height: 15,)

        ],),
      ),
    );
  }


}
