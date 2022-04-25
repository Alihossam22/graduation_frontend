import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../component/header.dart';
import 'review.dart';
import 'myprofile.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Color.fromRGBO(234, 231, 222, 1),
            Color.fromRGBO(234, 231, 222, 1),
            Color.fromRGBO(234, 231, 222, 1),
          ]),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Header(),
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(100, 50, 77, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      )),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        child:Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white
                                ),
                                child: const Center(
                                  child: Icon(Icons.person,color:  Color(0XFF64314D),size: 40,),
                                )
                            ),
                            const SizedBox( width: 10),
                            const Text("My profile",style: TextStyle(color: Colors.white,fontSize: 30),),
                            const SizedBox(width: 100,),
                            const Icon(Icons.arrow_forward_ios,color: Colors.white,size: 30,)
                          ],
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const myprofile()));
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white
                                ),
                                child: const Center(
                                  child: Icon(Icons.lock,color:  Color(0XFF64314D),size: 35,),
                                )
                            ),
                            const SizedBox( width: 10),
                            const Text("Priavcy police",style: TextStyle(color: Colors.white,fontSize: 30),),
                            const SizedBox(width: 50,),
                            const Icon(Icons.arrow_forward_ios,color: Colors.white,size: 30,)
                          ],
                        ),
                        onTap: (){},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white
                                ),
                                child: const Center(
                                  child: Icon(Icons.person,color:  Color(0XFF64314D),size: 40,),
                                )
                            ),
                            const SizedBox( width: 10),
                            const Text("About App",style: TextStyle(color: Colors.white,fontSize: 30),),
                            const SizedBox(width: 95,),
                            const Icon(Icons.arrow_forward_ios,color: Colors.white,size: 30,)
                          ],
                        ),
                        onTap: (){},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white
                                ),
                                child: const Center(
                                  child: Icon(Icons.star,color:  Color(0XFF64314D),size: 40,),
                                )
                            ),
                            const SizedBox( width: 10),
                            const Text("Review",style: TextStyle(color: Colors.white,fontSize: 30),),
                            const SizedBox(width: 140,),
                            const Icon(Icons.arrow_forward_ios,color: Colors.white,size: 30,)
                          ],
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>review()));
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
