import 'dart:async';
 
main(List<String> args) {
  getAJoke().then((value) {
   // print("hey printed first");
    print(value);

    
  })
  .catchError((error) {
    print('Error');
  });
}
 
Future<String> getAJoke() {
  return new Future<String>(() {

    print("long running task");
    //Do a long running task. E.g. Network Call.
    //Return the result
    return "This is a joke";
  });
}