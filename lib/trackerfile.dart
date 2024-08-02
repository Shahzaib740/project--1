import 'package:flutter/material.dart';
class tracker extends StatefulWidget {
  const tracker({Key? key}) : super(key: key);

  @override
  State<tracker> createState() => _trackerState();
}

class _trackerState extends State<tracker> {
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
                    height: 50,
                    width: 230,
                    margin: EdgeInsets.only(top: 10,right: 110,left: 10),

                    child: Center(
                      child: Text('Add a Tracker',
                        style: TextStyle(color: Colors.black,fontSize: 35, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),

                  Container(
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.only(top: 40),
                    child: Image.asset("assets/image/footprint.png"),
                  ),
                  Container(
                    height: 30,
                    width: 150,
                    margin: EdgeInsets.only(top: 50),

                    child: Center(child: Text("Add your tracker", style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold),)),
                  ),
                  Container(

                    height:60,
                    width: 290,

                    margin: EdgeInsets.only(top: 20),

                    child: RichText(text: TextSpan(
                      style: new TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                      ),
                      children: <TextSpan>[
                        new TextSpan(text: " Lorem Ipsum is simply dummy text of the printing and typesetting industry.",

                          style: TextStyle(color: Colors.black38,),),
                      ],
                    ),
                      textAlign:  TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 0,left: 6, top: 20),
                    width: 330,
                    height: 60,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18),),
                        color: Color.fromRGBO(35, 88, 173,1,)

                    ),



                    child:

                    Center(
                      child: Text(
                        'Add a Tracker',
                        style: TextStyle(
                          color: Colors.white, fontSize: 20,),
                      ),
                    ),

                  ),

                ],
              ),
            ],
          )
      ),
    );
  }
}







