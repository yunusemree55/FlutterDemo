import 'package:eshop/validator/customer_login_validator.dart';
import 'package:eshop/models/customer.dart';
import 'package:eshop/screens/register_screen.dart';
import 'package:eshop/widgets/login_page_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Customer customer1 = Customer.withLessInfo("", "");

  final loginFormKey = GlobalKey<FormState>();

  bool showPassword = true;
  bool click = true;

  void showPasswordTextField() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  void changePasswordIcon() {
    setState(() {
      click = !click;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login page"),
          foregroundColor: Color.fromRGBO(249, 97, 103, 1),
          backgroundColor: Color.fromRGBO(252, 231, 125, 50),
        ),
        body: SingleChildScrollView(child: buildRegisterPageField()));
  }

  Widget buildRegisterPageField() {
    return Container(
      color: Color.fromRGBO(252, 231, 125, 50),
      child: Column(
        children: <Widget>[
          loginPageWidgets.buildLoginBoxField(),
          Padding(padding: EdgeInsets.all(15)),
          buildLoginFormField(),
          buildFieldForNewUser(),
          Row(),
          SizedBox(
            height: 60,
          ),
          loginPageWidgets.buildSocialMediaField()
        ],
      ),
    );
  }

  Widget buildLoginFormField() {
    return Form(
      key: loginFormKey,
      child: Column(
        children: [
          buildUserNameTextField(),
          Padding(padding: EdgeInsets.all(15)),
          buildPasswordTextField(),
          Padding(padding: EdgeInsets.all(15)),
          buildSubmitButtonField(),
          Padding(padding: EdgeInsets.all(10)),
        ],
      ),
    );
  }

  Widget buildUserNameTextField() {
    return TextFormField(
      onSaved: (value) {
        customer1.username = value!;
      },
      validator: (value) => CustomerLoginValidator.checkUsernameField(value!),
      decoration: InputDecoration(
          labelText: "Username",
          labelStyle: TextStyle(
              color: Color.fromRGBO(249, 97, 103, 1),
              fontWeight: FontWeight.bold),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide:
                  BorderSide(width: 2, color: Color.fromRGBO(249, 97, 103, 1))),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide:
                BorderSide(width: 2, color: Color.fromRGBO(249, 97, 103, 1)),
          ),
          prefixIcon: Icon(
            Icons.person,
            color: Color.fromRGBO(249, 97, 103, 1),
          )),
    );
  }

  Widget buildPasswordTextField() {
    return TextFormField(
      onSaved: (value) {
        customer1.password = value!;
      },
      validator: (value) => CustomerLoginValidator.checkPasswordField(value!),
      obscureText: showPassword,
      decoration: InputDecoration(
          labelText: "Password",
          labelStyle: TextStyle(
              color: Color.fromRGBO(249, 97, 103, 1),
              fontWeight: FontWeight.bold),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide:
                  BorderSide(width: 2, color: Color.fromRGBO(249, 97, 103, 1))),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide:
                BorderSide(width: 2, color: Color.fromRGBO(249, 97, 103, 1)),
          ),
          prefixIcon: Icon(
            Icons.lock,
            color: Color.fromRGBO(249, 97, 103, 1),
          ),
          suffixIcon: IconButton(
            icon: click ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
            onPressed: () {
              showPasswordTextField();
              changePasswordIcon();
            },
            color: Colors.black,
          )),
    );
  }

  Widget buildSubmitButtonField() {



    return SizedBox(
      width: 250,
      child: ElevatedButton(
        onPressed: () {
          if (loginFormKey.currentState!.validate()) {
            loginFormKey.currentState!.save();
            print(customer1.username);
            print(customer1.password);
            Navigator.pushNamed(context, "/register");

          }


        },
        child: Text("Login"),
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(249, 97, 103, 1),
          onPrimary: Color.fromRGBO(252, 231, 125, 50),
          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }

  Widget buildFieldForNewUser() {
    return Row(
      children: [
        Text.rich(TextSpan(children: [
          TextSpan(
              text: "You don't have an account yet ?",
              style: GoogleFonts.laila(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color.fromRGBO(249, 97, 103, 1)),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                })
        ])),
      ],
    );
  }
}
