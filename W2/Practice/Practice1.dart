
enum Skill{
  flutter,
  dart,
  other,
}

class Address{
  String street;
  String city;
  int zipCode;

  Address(this.street , this.city, this.zipCode);

  String toString(){
    return "$street , $city , $zipCode";
  }

}

class Employee{
  static const double BASE_SALARY = 5000;

  final List<Skill> _skills;
  final Address _address;
  final int _yearsOfExperince;
  final String _name;

  int bonusOfExperince=0;

  Employee(this._skills,this._address,this._yearsOfExperince,this._name);

  Employee.Mobile(this._address,this._yearsOfExperince,this._name):
    _skills=[Skill.dart,Skill.flutter];


  double computeSalary(){
    double result = BASE_SALARY;

    if (_yearsOfExperince > 1){
      bonusOfExperince = _yearsOfExperince * 1000;
      result+= bonusOfExperince;
    }
    for (int i=0 ; i < _skills.length; i ++){
      if (_skills[i]==Skill.flutter){
        result+=5000;        
      }
      else if (_skills[i]== Skill.dart){
        result+=3000;
      }
      else if(_skills[i]==Skill.other){
        result+=1000;
      }
    }
    return result;
  }
  String getText(){
    String text="";
    for (int i =0; i< _skills.length; i ++){
      text += " " + _skills[i].name;
    }
    return text;
  }
  
  String toString(){
    return "Employee name: $_name , salary : $computeSalary(), Skill: ${getText()},Address: $_address";
  }

}

void main (){
  Address a1 = Address("2004","Pnhom penh", 120802);
  Employee e1= Employee([Skill.flutter,Skill.dart], a1, 2, "Chan Archvathanak");
  e1.computeSalary();
  print(e1);
  
}
