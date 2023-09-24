import 'package:flutter/material.dart';
import 'package:party_app/animation/FadeAnimation.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {

  bool _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit: BoxFit.cover,
          )
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.1),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.end,
            children: [
              FadeAnimation(1.0, Text("Nearby parties in your location",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),),
              SizedBox(height: 30,),
              FadeAnimation(1.3,
                Text("Let us find you a party for your interest",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w100),),),
              SizedBox(height: 150,),

              _isLogin ?
              FadeAnimation(1.6, Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.yellow.shade900,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text("Start",style: TextStyle(color: Colors.white,fontSize: 18),),
                ),
              )):

              FadeAnimation(1.6, Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text("Google+",style: TextStyle(color: Colors.white,fontSize: 18),),
                ),
              )),

              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
