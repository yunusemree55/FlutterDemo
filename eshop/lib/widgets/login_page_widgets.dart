
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPageWidgets{

   Widget buildLoginBoxField() {
    return Container(
        color: Color.fromRGBO(249, 97, 103, 1),
        height: 190,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Image.asset("lib/photos/logo1.jpeg", height: 150, width: 100,),

            Align(
                alignment: Alignment.center,
                child: Text("Login",
                    style: GoogleFonts.heebo(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromRGBO(252, 231, 125, 50),
                    )))
          ],
        ));
  }

   Widget buildSocialMediaField() {

    Uri twitterUrl = Uri.parse("https://twitter.com");
    Uri instagramUrl = Uri.parse("https://www.instagram.com/?hl=tr");
    Uri linkedinUrl = Uri.parse("https://www.linkedin.com");

    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          GestureDetector(
              onTap: () => _launch(instagramUrl),
              child: Image.asset("lib/photos/iglogo.png",height: 50)),


          GestureDetector(
              onTap: () => _launch(twitterUrl) ,
              child: Image.asset("lib/photos/twlogo.png",height: 50)),


          GestureDetector(
              onTap: () => _launch(linkedinUrl),
              child: Image.asset("lib/photos/linkedinlogo.png",height: 50))

        ]
    );
  }

  Future<void> _launch(Uri url) async{

    await canLaunchUrl(url)
        ? await launchUrl(url)
        : "Error";
  }


}


LoginPageWidgets loginPageWidgets = LoginPageWidgets();