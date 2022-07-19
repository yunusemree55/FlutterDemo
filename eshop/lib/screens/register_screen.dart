import 'package:eshop/models/customer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../validator/customer_login_validator.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final registerKey = GlobalKey<FormState>();
  Customer newCustomer = Customer.withoutPhoto(0, "", "", "");

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
        title: Text("Register Page"),
        foregroundColor: Color.fromRGBO(249, 97, 103, 1),
        backgroundColor: Color.fromRGBO(252, 231, 125, 50),
      ),
      body: SingleChildScrollView(
        child: buildRegisterPageField(),
      ),
      backgroundColor: Color.fromRGBO(249, 97, 103, 1),
    );
  }

  Widget buildRegisterPageField() {
    return Container(
      child: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(15)),
            Form(
              key: registerKey,
              child: Container(
                child: Column(
                  children: [
                    buildUserNameTextField(),
                    Padding(padding: EdgeInsets.all(15)),
                    buildPasswordTextField(),
                    Padding(padding: EdgeInsets.all(15)),
                    buildPhoneTextField(),
                    Padding(padding: EdgeInsets.all(15)),
                    buildSubmitButtonField(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildUserNameTextField() {
    return TextFormField(
      onSaved: (value) {
        newCustomer.username = value!;
      },
      validator: (value) => CustomerLoginValidator.checkUsernameField(value!),
      decoration: InputDecoration(
          labelText: "Username",
          labelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                  width: 2, color: Color.fromRGBO(252, 231, 125, 50))),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide:
                BorderSide(width: 2, color: Color.fromRGBO(252, 231, 125, 50)),
          ),
          errorStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          prefixIcon: Icon(
            Icons.person,
            color: Color.fromRGBO(249, 97, 103, 1),
          )),
    );
  }

  Widget buildPhoneTextField() {
    return TextFormField(
      onSaved: (value) {
        newCustomer.phoneNumber = value!;
      },
      validator: (value) => CustomerLoginValidator.checkPhoneField(value!),
      decoration: InputDecoration(
          labelText: "Phone",
          hintText: "0 (505) 555 44 33",
          labelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                  width: 2, color: Color.fromRGBO(252, 231, 125, 50))),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide:
                BorderSide(width: 2, color: Color.fromRGBO(252, 231, 125, 50)),
          ),
          errorStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          prefixIcon: Icon(
            Icons.phone,
            color: Color.fromRGBO(249, 97, 103, 1),
          )),
    );
  }

  Widget buildPasswordTextField() {
    return TextFormField(
      onSaved: (value) {
        newCustomer.password = value!;
      },
      validator: (value) => CustomerLoginValidator.checkPasswordField(value!),
      obscureText: showPassword,
      decoration: InputDecoration(
          labelText: "Password",
          labelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                  width: 2, color: Color.fromRGBO(252, 231, 125, 50))),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide:
                BorderSide(width: 2, color: Color.fromRGBO(252, 231, 125, 50)),
          ),
          errorStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
          if (registerKey.currentState!.validate()) {
            registerKey.currentState!.save();
            print(newCustomer.username);
            print(newCustomer.password);
            print(newCustomer.phoneNumber);
            Navigator.pushNamed(context, "/login");
          }
        },
        child: Text("Register"),
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(252, 252, 78, 1),
          onPrimary: Colors.black,
          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
