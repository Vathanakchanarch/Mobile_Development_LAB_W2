import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

// void main() async {
//   Uri url = Uri.parse('https://fooapi.com/api/products');

//   // 1- Get the request response
//   Response response = await http.get(url);

//   // 2- Check the responsae status
  // if (response.statusCode != 200) {
  //   throw Exception('Failed to fetch products (HTTP ${response.statusCode})');
  // }

//   // 3- Parse the response
//   Map<String, dynamic> json = jsonDecode(response.body);
//   List<dynamic> jsonItems = json["data"];

//   Map<String, dynamic> jsonItem = jsonItems[0];

//   Product product = Product.fromJson(jsonItem);
//   print(product);
// }

// class Product {
//   final String title;
//   final double price;

//   Product({required this.title, required this.price});

//   static Product fromJson(Map<String, dynamic> json) {
//     const String titleKey = 'title';
//     const String priceKey = 'price';

//     assert(json[titleKey] is String);
//     assert(json[priceKey] is double);

//     String title = json[titleKey];
//     double price = json[priceKey];
 
//     return Product(title: title, price: price);
//   }

//   @override
//   String toString() {
//     return "Product $title - price= $price";
//   }
// }
//// My TURN ///

class Geo{
  String? lat;
  String? lng;

  Geo ({required this.lat, required this.lng});
  static Geo fromJson(Map<String,dynamic> json){
    return Geo(lat: json["lat"], lng: json["lng"]);
  }
  String toString(){
    return "lat = $lat , lng= $lng";
  }
}

class Address{
  String? street;
  String? suite;
  String? city;
  String? zipCode;
  Geo? geo;

  Address ({required this.street, required this.suite, required this.city,required this.zipCode,required this.geo});
  static Address fromJson(Map<String, dynamic> json){
    return Address(street: json["street"], suite: json["suite"], city: json["city"], zipCode: json["zipcode"],geo: Geo.fromJson(json["geo"]));
  }

  String toString(){
    return "Street = $street , suite= $suite , city= $city, zipCode =$zipCode , geo = $geo ";
  }
}
class Company{
  String? name;
  String? catchPhrase;
  String? bs;

  Company({required this.name,required this.catchPhrase,required this.bs});

  static Company fromJson(Map<String, dynamic> json){
    return Company(
      name: json["name"], catchPhrase: json["catchPhrase"], bs: json["bs"],
    );
  }
  String toString(){
    return "name:$name catchPhrase:$catchPhrase bs:$bs";
  }
}

class User{
  int? id;
  String? name;
  String? Username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;
  User({required this.id,required this.name,required this.Username, required this.email,required this.address,required this.phone,required this.website,required this.company});

  static User fromJson(Map<String , dynamic> json){
    return User(id: json["id"], name: json["name"], Username: json["username"], email: json["email"],address: Address.fromJson(json["address"]),phone: json["phone"],website: json["website"],company:Company.fromJson(json["company"]));
  }

  String toString(){
    return "id: $id, Name:$name, Username=$Username,email=$email,address:$address,Phone:$phone,Webiste:$website,company:$company";
  }

}

void main () async{
  
  Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');
  
  Response response = await http.get(url);

  if(response.statusCode != 200) {
    throw Exception('Failed to fetch products (HTTP ${response.statusCode})');
  }

  Map<String, dynamic> json = jsonDecode(response.body);
  
  User user1= User.fromJson(json);
  print(user1);
}

