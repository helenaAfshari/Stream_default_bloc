
import 'sync_stream.dart';

//نکته این async
//با async استریم متفاوت هست
Future<void> main() async {
final Stream<String> stream = printNumberrString();
// await for (final event in stream){
//   print(event);
// }
await stream.forEach((element) {
   print(element);
});
}
Stream<String> printNumberrString()async*{
  int value = 1;
  //این حلقه تا ابد برقرار هست 
  //حلقه بینهایت
  while(true){
    //این فقط داخل استریم کار میکند و دیتارا برای ما ارسال میکند به اون جایی که دارن بهش گوش میدهند
    //این valueکه بالا تعریف کردیم را میخواهیم هی مدام بفرستیم
    //دیتارا ارسال میکند به جایی که بهش گوش میدهند
     yield "hana:" + (value++).toString();
     //حالا اینجا نمیخواییم برنامه دچار کرش شود پس یک وقفه ایجاد میکنیم که هر یک ثانیه ارسال کند
     await Future.delayed(Duration(seconds: 1));

  }
}