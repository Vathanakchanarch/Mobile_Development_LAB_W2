class Duration{
  final int _duration;

  

  Duration.fromSecond(int Second): _duration =  Second *1000  ;
  Duration.fromMin(int min): _duration = min * 60 * 1000 ;
  Duration.fromHour(int Hour) : _duration = Hour * 60 *60 *1000 ;
  Duration.fromMs(int ms) : _duration = ms ;

  int get duration => _duration;

  String toString (){
    return "$_duration ms";
  }
}

void main(){
  Duration d1= Duration.fromHour(1);
  Duration d2= Duration.fromSecond(1000);
  Duration d3 = Duration.fromMs(d1.duration+d2.duration);
  Duration d4 =Duration.fromMs(d1.duration-d2.duration);

  bool d5= d1.duration>d2.duration;

  print(d5);
}
