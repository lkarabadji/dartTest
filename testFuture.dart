import 'dart:async';

main(List<String> args) {
  getAJoke().then((value) {
    // print("hey printed first");
    print(value);
  }).catchError((error) {
    print('Error');
  });
}

Future<String> getAJoke() {
  return new Future<String>(() async {
    print("long running task");
    await Future.delayed(Duration(seconds: 5));
    //Do a long running task. E.g. Network Call.
    //Return the result
    return "This is a joke";
  });
}
