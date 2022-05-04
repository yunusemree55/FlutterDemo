import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/product.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
        appBar: AppBar(
          title: Text(product.productName + " Detay Sayfası",
              style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold)),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://cdn.getir.com/marketing/Getir_Logo_1621812382342.png"),
            backgroundColor: Color.fromRGBO(92, 60, 187, 5),
          ),
        ),
        body: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.only(top:2.0,bottom: 15),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  
                  buildProductImageField(context , product),


                ],
              ),
            ),
            buildProductDetailField(context,product.productDescription),






          ],
        ));
  }

  Widget buildProductImageField(BuildContext context, Product value) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.25,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 25),
        decoration: BoxDecoration(
            border:
                Border.all(color: Color.fromRGBO(92, 60, 187, 5), width: 2),
            borderRadius: BorderRadius.all(Radius.circular(18))),
        child: Image.network(
          value.imageUrl,
          width: 200,
        ));
  }

 Widget buildProductDetailField(BuildContext context,String value) {

    return Container(
      width: double.infinity,
      child: Text(value,style: GoogleFonts.secularOne(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 20,),),
      padding: EdgeInsets.all(15),

      decoration: BoxDecoration(
          color: Color.fromRGBO(96, 119, 192,1),
          border: Border.all(color: Color.fromRGBO(81, 70, 68,1), width: 2),
          borderRadius: BorderRadius.all(Radius.circular(15)),
          shape: BoxShape.rectangle
      ),

    );
 }
}
