Future<String> printString() {
  Future<String> str =
      Future.delayed((Duration(seconds: 3)), () => "Hey How are you");
  return str;
}

void printWord() async {
  String abc = await printString();
  print("This function says ${abc}");
}

void main() async {
  print("Main Starts");
  await printWord();
  print("Main Ends");
}
