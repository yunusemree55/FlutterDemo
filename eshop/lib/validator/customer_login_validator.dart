

class CustomerLoginValidator{



  static String? checkUsernameField(String value){

    if(value.length < 6 ){
      return "Please type less 6 words";
    }
    else if(value.isEmpty == true ){
      return "Please enter your username";
    }else{
      return null;
    }


  }


  static String? checkPasswordField(String value){

    if(value.isEmpty == true ){
      return "Please enter your password";
    }else{
      return null;
    }
  }


  static String? checkPhoneField(String value){

    if(value.length != 11){
      return "Write your phone number correctly";
    }else{
      null;
    }


  }


}
