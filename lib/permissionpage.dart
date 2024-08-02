import 'package:flutter/material.dart';
import 'package:shahzaib/trackerfile2.dart';
import 'otpfile.dart';
class permission extends StatefulWidget {
  const permission({Key? key}) : super(key: key);

  @override
  State<permission> createState() => _permissionState();
}

class _permissionState extends State<permission> {
  bool? isChecked1 = false;
  bool? isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
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
                    child: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>otp() ),);
                    }, icon: Icon(Icons.arrow_back_ios_new, size: 25,color: Colors.white,)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 220,
                    height: 70,

                    child: Center(
                      child: Text(" Permissions", style: TextStyle(  fontSize: 37, fontWeight: FontWeight.w500
                      ),
                      ),
                    ),

                  ),
                ),


                Container(
                  padding: (EdgeInsets.only(top: 10,)),
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

                        style: TextStyle(color: Colors.black45,),),
                    ],
                  ),
                    textAlign:  TextAlign.center,
                  ),
                ),


                Center(
                  child: Container(
                    height: 200,
                    width: 310,

                    margin: EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.all(Radius.circular(15)

                      ),

                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(

                          padding: const EdgeInsets.only(top: 50, left: 30),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: isChecked1,
                                  activeColor: Color.fromRGBO(0, 0, 255,5 ),
                                  onChanged: (newBool) {
                                    setState(() {
                                      isChecked1 = newBool;
                                    });
                                  } ),
                              Text("Camera Permission", style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 20
                              ),
                              ),
                              // Checkbox(value: isChecked,
                              //     activeColor: Colors.orangeAccent,
                              //     onChanged: (newBool) {
                              //       setState(() {
                              //         isChecked = newBool;
                              //       });
                              //     } ),
                            ],
                          ),
                        ),
                        Container(

                          padding: const EdgeInsets.only(top: 0, left: 30),
                          child: Row(
                            children: [
                              Checkbox(value: isChecked2,
                                  activeColor:  Color.fromRGBO(0, 0, 255,5 ),
                                  onChanged: (newBool) {
                                    setState(() {
                                      isChecked2 = newBool;
                                    });
                                  } ),
                              Text("Location Permission", style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 19
                              ),
                              ),
                              // Checkbox(value: isChecked,
                              //     activeColor: Colors.orangeAccent,
                              //     onChanged: (newBool) {
                              //       setState(() {
                              //         isChecked = newBool;
                              //       });
                              //     } ),
                            ],
                          ),
                        ),





                      ],
                    ),

                  ),
                ),

                InkWell(onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> id ()) );

                },
                  child: Container(
                    margin: EdgeInsets.only(right: 0,left: 6, top: 43),
                    width: 330,
                    height: 55,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14),),
                      color: Color.fromRGBO(0, 0, 255,5 ),


                    ),

                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white, fontSize: 20,),
                      ),
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


