import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const EdgeInsets.all(20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            const SizedBox(height: 20,),
            const Text('List of Article',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30,),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  for(int i=0; i<15; i++)
                    ListTime(time: '08:AM',),
                ]),
              ),
            )
            
          ]) ,
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding:const EdgeInsets.symmetric(vertical: 10),
      child:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  child: Row(
                    children: [
                      Text('Hello',
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(width: 5,),
                      Text('ZendVN',
                        style: TextStyle(fontSize: 28, color: Colors.lightBlue, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(50)
                        ),
                      )
              ],
            ),
          ),
          Container(
            padding:const EdgeInsets.symmetric(vertical: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(int i=0; i<10; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Transform(
                        transform: Matrix4.skewY(-0.1)
                                  ..rotateY(0.3),
                        child: Container(
                          height: size.height*1/12,
                          width: size.width*1/5,
                          decoration:const BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                        ),
                      ),
                    )
                ],
              ),
            ),
          )
        ]
      ),
    );
  }
}

// ignore: must_be_immutable
class ListTime extends StatelessWidget {
  String time;
  ListTime({super.key,required this.time});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return 
      Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Text(time.toUpperCase(),
              style:const TextStyle(
                fontSize: 28
              ),
            ),
            const SizedBox(width: 30,),
            Expanded(
              child: Container(
                height: size.height *1/18,
                width: size.width *2/3,
                decoration:const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              )
            )
          ],
        ),
      );
  }
}