enum Ordertype{
  delivery,
  direct,
}

class Address {
  String street;
  String city;
  int phoneNum;

  Address({required this.street,required this.city,required this.phoneNum});
  String toString(){
    return "$street , $city, $phoneNum";
  }
}

class Product{
  String name;
  double price;
  
  Product({required this.name,required this.price});
}

class orderItem{
  Product product;
  int quantity;
  orderItem({required this.product,required this.quantity});
  double totalEachItem(){
    return product.price * quantity;
  }
  String toString(){
    return "${product.name}  x${quantity} Total:${totalEachItem()}៛";
  }
}

class order{
  List<orderItem> items;
  Address address;
  Ordertype ordertype;
  double total=0;
  order({required this.items,required this.address, required this.ordertype});

  double totalAmount(){
    for (orderItem item in items){
      total += item.totalEachItem();
    }
    return total;
  }

  

  String toString(){
    return "The product: $items , Ordertype: ${ordertype.name} , TotalAll: ${totalAmount()}៛ ,Address: $address";
  }
}

void main(){
  Product p1 = Product(name: "Book", price: 2500);
  Product p2 = Product(name: "pen", price: 1000);

  Address a1 = Address(street: "Road 2004", city: "Pnhompenh", phoneNum: 089463499);

  orderItem order1=orderItem(product: p1, quantity: 2);
  orderItem order2=orderItem(product: p2, quantity: 3);

  order o=order(items: [order2,order1], address: a1, ordertype: Ordertype.delivery);
  print(o);
  
}