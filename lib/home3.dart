import 'package:flutter/material.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 850,
        width: 400,
        child: Stack(
          children: [
            Container(
              height: 850,
              width: 400,
              child: Image.asset("assets/image/grey.png",
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Container(
                child: Text('hello',style: TextStyle(fontSize: 30),),
              ),
            )
          ], ),),
    );
  }
}







