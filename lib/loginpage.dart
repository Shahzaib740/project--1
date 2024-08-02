import 'package:flutter/material.dart';

import 'home.dart';
import 'otpfile.dart';


final _formkey = GlobalKey<FormState>();
class text extends StatefulWidget {
  const text({Key? key}) : super(key: key);
  @override
  State<text> createState() => _textState();
}
class _textState extends State<text> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  String? validateEmail (String? email) {
    RegExp emailRegex = RegExp(r'^[\w\.-]+@[\w_]+\.\w{2,3}(\.\w{2,3})?$');
    final isEmailValid = emailRegex.hasMatch(email ?? '');
    if(!isEmailValid) {
      return ' please enter a valid email';
    }
    return null;
  }
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
              child: Image.asset("assets/image/grey.png",
                fit: BoxFit.cover,
              ),
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 50, 300, 0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8),),
                        color: Colors.black12,),
                      child: IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>home() ),);
                      }, icon: Icon(Icons.arrow_back_ios_new, size: 25,color: Colors.white,)),
                      // child: Center(child: Icon(
                      //   Icons.arrow_back_ios_new, size: 25, color: Colors.white,)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Center(
                      child: Container(
                        width: 240,
                        height: 44,
                        margin: EdgeInsets.only(top: 10, right: 110,),
                        child: Center(

                          child: Text("Let's start here" ,
                            style: TextStyle(color: Colors.black, fontSize: 33,fontWeight: FontWeight.bold, ),),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5, right: 25, left: 8, ),
                    child: Container(
                      width: 240,
                      height: 21,
                      margin: EdgeInsets.only(top: 3, right: 130, left: 10),
                      child: Center(
                        child: Text('Fill in your detail to begin',
                          style: TextStyle(color: Colors.black26, fontSize: 16),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 10, top: 30,),
                    child: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Fullname',
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(color: Colors.blue)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                      ),
                      validator: (name) => name!.length <3 ?' Name should be at least 3 special character'
                          :null,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 10, top: 10,),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(color: Colors.blue)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: validateEmail,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 10, top: 10,),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: IconButton(
                            icon: Icon(Icons.visibility_off,),
                            onPressed: () {}
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(color: Colors.blue)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      validator: (password) => password!.length <3 ?' Password should be at least 6 character'
                          :null,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(right: 0,left: 6, top: 3),
                  //      width: 330,
                  //      height: 55,
                  //
                  //      decoration: BoxDecoration(
                  //        borderRadius: BorderRadius.all(Radius.circular(18),),
                  //        color: Color.fromRGBO(13, 55, 143,1 ),
                  //
                  //
                  //      ),
                  //   child:
                  SizedBox(),
                  Container(
                    margin: EdgeInsets.only(right: 0,left: 6, top: 3),
                    width: 330,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18),),
                      color: Color.fromRGBO(13, 55, 143,1 ),
                    ),
                    child: ElevatedButton(onPressed: (){
                      _formkey.currentState!.validate();
                    },
                        child: Text("Sign In")),
                  ),
                  Container(
                    height: 24,
                    width: 25,
                    child: Center(
                      child: Text('or',
                        style: TextStyle( color: Colors.black,fontSize: 18),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> otp ()) );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 0,left: 6, top: 3),
                      width: 330,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18),),
                        color: Color.fromRGBO(13, 55, 143,1 ),
                      ),
                      child:
                      Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.white, fontSize: 20,),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 330,
                    height: 60,
                    margin: EdgeInsets.only(top: 10,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18) ,
                        ),
                        border: Border.all(color: Colors.black38),
                        color: Colors.white
                    ),
                    child:Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left:30 )),
                        Image.asset('assets/image/google.png',
                          width: 25,
                          height: 25,
                          fit: BoxFit.fill,
                        ),
                        Center(
                          child: Text(
                            '    Continue with google',
                            style: TextStyle(
                              color: Colors.black, fontSize: 18,),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 330,
                    height: 60,
                    margin: EdgeInsets.only(top: 10,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18),),
                        color: Colors.black
                    ),
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left:30 )),
                        Image.asset('assets/image/apple.png',
                          width:30,
                          height: 30,
                          fit: BoxFit.fill,
                        ),
                        Center(
                          child: Text(
                            '   Continue with apple',
                            style: TextStyle(
                                color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: (EdgeInsets.only(top: 10,)),
                      height:60,
                      width: 290,
                      margin: EdgeInsets.only(top:5 ),
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
                ], ),
            ),
          ],
        ),
      ),
    );
  }
}


