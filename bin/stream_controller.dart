
import 'dart:async';

void main(){
  //اینجا از .stream
  //استفاده میکنیم چون از Stream استفاده کردیم 
  final Stream<int> stream = PrintNumber().streamController.stream;
  //وباید گوش کند 
  stream.listen((event) {
    print(event);
  });
}

class PrintNumber{

  final StreamController<int> streamController = StreamController();
  int value = 1;
    
   PrintNumber(){

     Timer.periodic(Duration(seconds: 1), (timer) {

     streamController.add(value++);

   });
   }
}