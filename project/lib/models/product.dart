
class Product{

  late int id;
  late String productName;
  late String productDescription;
  late String imageUrl;
  late int unitPrice;
  late int unitsInStock;
  late bool status;

  Product(String productName,String productDescription,String imageUrl,int unitPrice,int unitsInStock ){

    this.productName = productName;
    this.productDescription = productDescription;
    this.imageUrl = imageUrl;
    this.unitPrice = unitPrice;
    this.unitsInStock = unitsInStock;
  }

  Product.withId(int id,String productName,String productDescription,String imageUrl,int unitPrice,int unitsInStock ){

    this.id = id;
    this.productName = productName;
    this.productDescription = productDescription;
    this.imageUrl = imageUrl;
    this.unitPrice = unitPrice;
    this.unitsInStock = unitsInStock;
  }


  get getStatus{

    if(unitsInStock > 0 ){
      return this.status = true;
    }else{
      return this.status = false;
    }

  }


}