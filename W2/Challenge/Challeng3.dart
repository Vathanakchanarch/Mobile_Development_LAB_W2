
class Person {
  String firstname;
  String lastname;

  Person(this.firstname,this.lastname);
  String get fullname{
    return firstname+" "+lastname;
  }

  
}

void main (){
  Person p1=Person("Chan", "Archvathanak");
  print(p1.fullname);
}
