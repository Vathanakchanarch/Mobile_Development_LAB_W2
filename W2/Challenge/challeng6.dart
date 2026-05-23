class Distance{
  final double distance;

  Distance.km(double km): distance = km * 10000;
  Distance.cm(double cm): distance = cm ;
  Distance.meter(double meter): distance = meter * 100;
  
  double getmeter (){
    return distance / 100;
  }

  double getcm (){
    return distance;
  }

  double getkm(){
    return distance / 10000;
  }

  
  String toString(){
    return "$distance";
  }
}

void main (){
  Distance d1= Distance.cm(1);
  Distance d2= Distance.km(1);
  Distance result= Distance.cm(d1.getcm()+d2.getcm());

  print(result.getkm());
}
