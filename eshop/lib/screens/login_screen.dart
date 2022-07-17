import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register page"),
          foregroundColor: Color.fromRGBO(249, 97, 103, 1),
          backgroundColor: Color.fromRGBO(252, 231, 125, 50),
        ),
        body: SingleChildScrollView(
          child: buildRegisterPageField()
        ));
  }




  Widget buildRegisterPageField() {

    return Container(
      color: Color.fromRGBO(252, 231, 125, 50),

      child: Column(
        children: <Widget>[

          buildRegisterBoxField(),
          Padding(padding: EdgeInsets.all(15)),

          buildUserNameTextField(),
          Padding(padding: EdgeInsets.all(15)),

          buildPasswordTextField(),
          Padding(padding: EdgeInsets.all(15)),

          buildSubmitButtonField(),
          Row(

          ),
          SizedBox(height: 108,),
          buildSocialMediaField()




        ],
      ),
    );

  }


  Widget buildRegisterBoxField() {
    return Container(
        color: Color.fromRGBO(249, 97, 103, 1),
        width: MediaQuery.of(context).size.width,
        height: 190,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            
            Image.asset("lib/photos/logo1.jpeg", height: 150, width: 100,),

            Align(
                alignment: Alignment.center,
                child: Text("Register",
                    style: GoogleFonts.heebo(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromRGBO(252, 231, 125, 50),
                    )))
          ],
        ));
  }

 Widget buildUserNameTextField() {

    return TextField(

      decoration: InputDecoration(
          labelText: "Username",
          labelStyle: TextStyle(color: Color.fromRGBO(249, 97, 103, 1)),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(15)),
              borderSide:
              BorderSide(width: 2, color: Color.fromRGBO(249, 97, 103, 1))),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(width: 2, color: Color.fromRGBO(249, 97, 103, 1)),
          ),
          prefixIcon: Icon(
            Icons.person,
            color: Color.fromRGBO(249, 97, 103, 1),
          )),
    );

  }

  Widget buildPasswordTextField() {

    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          labelText: "Password",
          labelStyle: TextStyle(color: Color.fromRGBO(249, 97, 103, 1)),
          fillColor: Colors.white,
          filled: true,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(15)),
              borderSide:
              BorderSide(width: 2, color: Color.fromRGBO(249, 97, 103, 1))),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(width: 2, color: Color.fromRGBO(249, 97, 103, 1)),
          ),
          prefixIcon: Icon(
            Icons.lock,
            color: Color.fromRGBO(249, 97, 103, 1),
          )),
    );



  }

 Widget buildSubmitButtonField() {

    return SizedBox(
      width: 250,
      child: ElevatedButton(onPressed: (){},
        child: Text("Login"),
        style: ElevatedButton.styleFrom(
            primary: Color.fromRGBO(249, 97, 103, 1),
            onPrimary: Color.fromRGBO(252, 231, 125, 50),
            textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

        ),
      ),
    );

 }

  Widget buildSocialMediaField() {

    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          Image.asset("lib/photos/iglogo.png",height: 50),
          Image.asset("lib/photos/twlogo.png",height: 50),
          Image.asset("lib/photos/linkedinlogo.png",height: 50)

        ]
    );
  }


}
