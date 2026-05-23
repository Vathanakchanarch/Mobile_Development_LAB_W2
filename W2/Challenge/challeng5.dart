enum TravelClass{
  firstClass,
  economyClass,
  bussinessClass,
  premiumEconomyClass,
}
class Passenger{
  String fullname;
  int age;
  String contact;

  Passenger({required this.fullname,required this.age,required this.contact});
  String toString(){
    return "$fullname ";
  }
}

class TicketTicket{
  Passenger information;
  String desination;
  TravelClass tc;
  String? discountCode;

  TicketTicket({required this.information,required this.desination ,required this.tc,this.discountCode });

  String toString(){
    return "Passenger : $information , Desination: $desination , TravelClass: ${tc.name} ";
  }

}

void main (){
  Passenger p1= Passenger(fullname: "Chan Archvathank", age: 18, contact: "089463499");
  TicketTicket t1= TicketTicket(information: p1, desination: "Phom Penh", tc: TravelClass.bussinessClass );
  print(t1);

}