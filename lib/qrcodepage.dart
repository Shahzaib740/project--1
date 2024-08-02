import 'package:flutter/material.dart';
class qrcode extends StatefulWidget {
  const qrcode({Key? key}) : super(key: key);

  @override
  State<qrcode> createState() => _qrcodeState();
}

class _qrcodeState extends State<qrcode> {
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 50, 290, 0),
                  child: Container(
                    height: 45,
                    width: 37,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7),),
                      color: Colors.black38,),
                    child: Center(child: Icon(
                      Icons.arrow_back_ios_new, size: 25, color: Colors.white,)),
                  ),

                ),
                Container(
                  height: 150,
                  width: 350,

                  margin: EdgeInsets.only(left: 4),
                  child: Center(
                    child: RichText(text: TextSpan(

                      children: <TextSpan>[
                        new TextSpan(text: "Please scan the QR- Code on the backside of on your device",

                          style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, color: Colors.black),),
                      ],
                    ),
                      textAlign:  TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  height: 180,
                  width: 150,
                  child: Image.asset("assets/image/scanner.png",),
                ),
                Container(
                  height: 30,
                  width: 140,

                  child: Center(
                    child: Text("or enter tracker-ID",
                      style: TextStyle( fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:BorderRadius.circular(15)
                  ),

                  child: ListView(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40 , top: 5),
                                child: Image(image:AssetImage("assets/image/falsesign.png",
                                ),
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Text("Device Name 1",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),

                            ],

                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40 , top: 10),
                                child: Image(image:AssetImage("assets/image/falsesign.png",
                                ),
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Text("Device Name 1",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),

                            ],

                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40 , top: 10),
                                child: Image(image:AssetImage("assets/image/falsesign.png",
                                ),
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Text("Device Name 1",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),

                            ],

                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40 , top: 10),
                                child: Image(image:AssetImage("assets/image/falsesign.png",
                                ),
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Text("Device Name 1",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),

                            ],

                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40 , top: 10),
                                child: Image(image:AssetImage("assets/image/falsesign.png",
                                ),
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Text("Device Name 1",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),

                            ],

                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40 , top: 10),
                                child: Image(image:AssetImage("assets/image/falsesign.png",
                                ),
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Text("Device Name 1",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),

                            ],

                          ),
                        ),
                        Container(
                          child: Row(
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Image(image:AssetImage("assets/image/falsesign.png",
                                ),
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Device Name 2",style: TextStyle(
                                  fontSize: 20,
                                ),
                                ),
                              ),

                            ],

                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Image(image:AssetImage("assets/image/falsesign.png",
                                ),
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Device Name 3",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),

                            ],

                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Image(image:AssetImage("assets/image/addicon.png",
                                ),
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Add New Device",style: TextStyle(
                                  fontSize: 20,
                                ),
                                ),
                              ),


                            ],

                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Image(image:AssetImage("assets/image/addicon.png",
                                ),
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Add New Device",style: TextStyle(
                                  fontSize: 20,
                                ),
                                ),
                              ),

                              Container(
                                height: 0,
                                width: 40,
                                color: Colors.blue,
                              ),


                            ],
                          ),

                        ),

                      ]  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 0,left: 6, top: 20),
                  width: 330,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18),),
                      color: Color.fromRGBO(35, 88, 173,1,)

                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white, fontSize: 20,),
                    ),
                  ),

                ),
              ],
            ),

          ],
        ),

      ),




    );
  }
}