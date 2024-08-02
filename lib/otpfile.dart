import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shahzaib/permissionpage.dart';

import 'loginpage.dart';
class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            Column(


              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 70, 290, 0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8),),
                      color: Colors.black12,),
                    child:IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>text() ),);
                    }, icon: Icon(Icons.arrow_back_ios_new, size: 25,color: Colors.white,)),
                    // Center(child: Icon(
                    // Icons.arrow_back_ios_new, size: 25, color: Colors.white,)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 55,
                      margin: EdgeInsets.only(top: 28, right: 20,),
                      child: Center(
                        child: Text("Otp verification" ,
                          style: TextStyle(color: Colors.black, fontSize: 42,fontWeight: FontWeight.bold ),),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: (EdgeInsets.only(top: 5,)),
                    height:30,
                    width:320,

                    margin: EdgeInsets.only(top: 3),

                    child: RichText(text: TextSpan(
                      // style: new TextStyle(
                      //   // fontSize: 16.0,
                      //   // color: Colors.black,
                      //   // fontFamily: 'Montserrat',
                      // ),
                      children: <TextSpan>[
                        new TextSpan(text: ' Enter the OTP sent to?',
                            style: TextStyle(color: Color.fromRGBO(96, 96, 96, 1))),

                        new TextSpan(text: ' awaixam1@mail.com',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 17)),
                      ],
                    ),
                    ),


                  ),


                ),
                Row(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 100,top: 70),
                      child: SizedBox(height: 10,
                        width: 30,



                        child:TextFormField(
                          cursorColor: Colors.blue,
                          onChanged: (value){ if (value.length==1 ) {
                            FocusScope.of(context).nextFocus();
                          }
                          },
                          onSaved: (pin1){},
                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,

                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ) ,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 70),
                      child: SizedBox(height: 10,
                        width: 30,
                        child:TextFormField(
                          onChanged: (value){ if (value.length==1 ) {
                            FocusScope.of(context).nextFocus();
                          }
                          },
                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ) ,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 70),
                      child: SizedBox(height: 10,
                        width: 30,

                        child:TextFormField(
                          onChanged: (value){ if (value.length==1 ) {
                            FocusScope.of(context).nextFocus();
                          }
                          },

                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        )
                        ,

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 70),
                      child: SizedBox(height: 10,
                        width: 30,
                        child:TextFormField(

                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,

                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ) ,
                      ),
                    ),
                  ],
                ),


                Center(
                  child: Container(
                    padding: (EdgeInsets.only(top: 7, left: 0)),
                    height:30,
                    width:260,


                    margin: EdgeInsets.only(top:45),

                    child: RichText(text: TextSpan(
                      // style: new TextStyle(
                      //   // fontSize: 16.0,
                      //   // color: Colors.black,
                      //   // fontFamily: 'Montserrat',
                      // ),
                      children: <TextSpan>[
                        new TextSpan(text: " Didn't you recieve the OTP?",
                            style: TextStyle(color: Color.fromRGBO(96, 96, 96, 1))),

                        new TextSpan(text: ' Resend OTP',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple,fontSize: 15)),
                      ],
                    ),
                    ),


                  ),

                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> permission ()) );
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 0,left: 6, top: 43),
                    width: 330,
                    height: 58,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14),),
                      color: Color.fromRGBO(0, 0, 255,5 ),


                    ),
                    child: Center(
                      child: Text(
                        'Verify',
                        style: TextStyle(
                          color: Colors.white, fontSize: 20,),
                      ),
                    ),

                  ),
                ),
                Center(
                  child: Container(
                    padding: (EdgeInsets.only(top: 10,)),
                    height:60,
                    width: 290,

                    margin: EdgeInsets.only(top: 202),

                    child: RichText(text: TextSpan(
                      style: new TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                      ),
                      children: <TextSpan>[
                        new TextSpan(text: ' By signing in, I agree with ',

                          style: TextStyle(color: Colors.black38,),),
                        new TextSpan (text: ' Terms of Use  ',
                            style: new TextStyle(fontWeight: FontWeight.bold,)),
                        new TextSpan(
                          text: ' and ',
                          style: TextStyle(color: Colors.black38, ), ),
                        new TextSpan(text: 'Privacy Policy ',
                            style: new TextStyle(fontWeight: FontWeight.bold, )),
                      ],
                    ),
                      textAlign: TextAlign.center,
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