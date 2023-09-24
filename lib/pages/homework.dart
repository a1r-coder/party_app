import 'package:flutter/material.dart';
import 'package:party_app/animation/FadeAnimation.dart';

class homework extends StatefulWidget {
  const homework({super.key});

  @override
  State<homework> createState() => _homeworkState();
}

class _homeworkState extends State<homework> {
  bool _isLogin = false;

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
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [

              Column(
                children: [
                  SizedBox(height: 80,),
                  FadeAnimation(1.0, Text("Find the best parties near you",style: TextStyle(color: Colors.yellow,fontSize: 40,),),),
                  SizedBox(height: 30,),
                  FadeAnimation(1.3,
                    Text("Let us find you a tutorial for your interest",style: TextStyle(color: Colors.greenAccent,fontSize: 25,fontWeight: FontWeight.w400),),),
                  SizedBox(height: 150,),
                ],
              ),
              Column(
                children: [
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

                  FadeAnimation(1.6,  Container(
                    height: 55,
                    child: Row(
                      children: [
                        Expanded(child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text("Goole+",style: TextStyle(color: Colors.white,fontSize: 18),),
                          ),
                        ),),

                        SizedBox(width: 10,),

                        Expanded(child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text("Facebook",style: TextStyle(color: Colors.white,fontSize: 18),),
                          ),
                        ),),
                      ],
                    ),
                  ),),

                  SizedBox(height: 10,)
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
