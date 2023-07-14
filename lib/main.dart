import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
home: toss(),
  ));
}

class toss extends StatefulWidget {
  const toss({super.key});

  @override
  State<toss> createState() => _tossState();
}

class _tossState extends State<toss> {
int tossnumberright=1;
int tossnumberleft=1;
void tosscalculateright(){
  setState(() {
    tossnumberright=Random().nextInt(6) + 1;

    tossnumberleft=Random().nextInt(6)+1;
  });
}


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tossapp",
      style: TextStyle(fontSize: 30,color: Colors.black),),
      backgroundColor: Colors.orangeAccent,),
      backgroundColor: Colors.orangeAccent,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  tosscalculateright();
                },
                child: Container(
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/dice $tossnumberright.png")
                    )
                  ),
                ),),
              SizedBox(width: 40,),
              GestureDetector(
                onTap: (){
                  tosscalculateright();
                },
                child: Container(
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/dice $tossnumberleft.png")
                    )
                  ),
                ),
              )
            ],

          )

        ],
      ),

    );

  }
}
