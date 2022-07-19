
class Customer{

  late int id;
  late String username;
  late String password;
  late String phoneNumber;
  late String photoUrl;



  Customer(this.id,this.username,this.password,this.phoneNumber,this.photoUrl);
  Customer.withoutPhoto(this.id,this.username,this.password,this.phoneNumber);
  Customer.withoutId(this.username,this.password,this.phoneNumber,this.photoUrl);
  Customer.withLessInfo(this.username,this.password);



}