import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tekrar1/screens/product_screen.dart';

import 'models/product.dart';

void main() {

  runApp(MaterialApp(
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Color.fromRGBO(92, 60, 187,5),
        foregroundColor: Colors.yellow
      )
    ),
      home: DefaultTabController(
        length: 3,
        child: MyApp(),)
  ));



}

class MyApp extends StatefulWidget {

  State<StatefulWidget> createState() => _MyAppState();

}

class _MyAppState extends State {


  Product selectedProduct = Product.withId(0, "", "", "", 0, 0);
  List<Product> products = [
    Product.withId(1,"Masa", "Mobilyalarınızı nemli bezle silerek temizleyebilirsiniz. Direkt güneş ışığından koruyunuz. Sıcak yüzeylerin ve suyun uzun süreli yüzeye temasından kaçınınız.Takım İçeriği: Ürün 1 Adet Sabit Masa,dan oluşmaktadır. Sandalye dahil değildir.", "https://evidea.akinoncdn.com/products/2021/01/25/54109/98822fbc-e467-4e0c-bc07-eb6045aa05bc_size616x616_cropTop.jpg", 1200, 25),
    Product.withId(2,"Kitaplık", "Kitaplığımızın metal gövdesi, güçlü profil aksama sahiptir. Tüm yüzeyleri dekoratif toz boya ile boyanmıştır. Uzun yıllar boyunca paslanma / renk değiştirmesi vb herhangi bir problem olmadan kullanılacak şekilde tasarlanmıştır.", "https://www.luckywoodstore.com/kalimba-masif-ahsap-kitaplik-96-P-2.jpg", 2000, 0),
    Product.withId(3,"Kanepe","Kol kısmında ahşap renkli metal profil kullanılmıştır.Görsellerdeki renkler haricindeki ürün özelleştirmelerinde %10 fiyat farklı uygulanmaktadır.Görsellerdeki renkler fiyat farklı olmaksızın kombinlenebilir.", "https://st.myideasoft.com/idea/en/81/myassets/products/044/sumelae-f97_min.jpg", 7500, 7)


  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Ürün Listesi", style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),),
        leading: CircleAvatar(
          backgroundImage: NetworkImage("https://cdn.getir.com/marketing/Getir_Logo_1621812382342.png"),
          backgroundColor: Color.fromRGBO(92, 60, 187, 5),
        ),
        bottom: TabBar(
          tabs: [
            Tab(icon: Image.network("https://pics.freeicons.io/uploads/icons/png/4610732361561029240-512.png"),height: 20,),
            Tab(icon: Image.network("https://pics.freeicons.io/uploads/icons/png/20867717261554125662-512.png"),height: 20,),
            Tab(icon: Image.network("https://pics.freeicons.io/uploads/icons/png/20867717261554125662-512.png"),height: 20,)
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Column(
            children: <Widget>[

              Expanded(
                child: ListView.builder(itemCount: products.length, itemBuilder: (BuildContext context, int index){
                  return Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    actionExtentRatio: 0.15,
                    child: buildListOfProduct(products,index),
                    actions: <Widget>[

                      buildProductInfoSlideAction(products,index)

                    ],
                    secondaryActions: [
                      buildProductDeleteSlideAction(products,index)
                    ],

                  );
                }),
              ),

            ],

          ),
          Text("data"),
          Text("asdasdasds")
          
          
          
        ],),


    );




  }

  buildIconStatus(bool value) {

    if(value == true){

      return Icon(Icons.done);
    }else{

      return Icon(Icons.not_interested_outlined);
    }
  }

  Widget buildProductInfoSlideAction(List<Product> value,int index) {

    return IconSlideAction(
      caption: "Detay",
      color: Colors.blueAccent,
      icon: Icons.info,
      onTap: (){
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductScreen(),settings: RouteSettings(arguments: products[index])));
        });
      },
    );
  }

  buildProductDeleteSlideAction(List<Product> value,int index) {

    return IconSlideAction(
        caption: "Sil",
        color: Colors.red,
        icon: Icons.delete,
        onTap: (){
          setState(() {
            products.removeAt(index);
          });
        });
  }

  Widget buildListOfProduct(List<Product> value,int index) {

    return ListTile(
        onTap: (){},
        leading: CircleAvatar(backgroundImage: NetworkImage(value[index].imageUrl),radius:25,),
        title: Text(value[index].productName,style: GoogleFonts.ubuntu(color: Colors.black, fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ürün fiyatı: " + value[index].unitPrice.toString() + " TL", style: GoogleFonts.ubuntu(color: Colors.blueGrey[600] ,fontWeight: FontWeight.bold),)
          ],

        ),
        trailing: buildIconStatus(value[index].getStatus));
  }





}




