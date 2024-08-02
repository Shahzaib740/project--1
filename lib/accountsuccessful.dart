

import 'package:flutter/material.dart';
class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);
  @override
  State<account> createState() => _accountState();
}
class _accountState extends State<account> {
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
              child: Image.asset("assets/image/backgroundimage.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 850,
              width: 400,
              child: Image.asset("assets/image/backgroundlines.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 100,
              width: 300,
              margin: EdgeInsets.only(top:300 , left: 30),
              child: Center(child: Text("Your account has been successfully created",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26,),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

