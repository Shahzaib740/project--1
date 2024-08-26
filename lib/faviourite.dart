import 'package:flutter/material.dart';
class page5 extends StatefulWidget {
  const page5({super.key});

  @override
  State<page5> createState() => _page5State();
}

class _page5State extends State<page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(child: Text("5",style: TextStyle(fontSize: 20),),)),
    );
  }
}
