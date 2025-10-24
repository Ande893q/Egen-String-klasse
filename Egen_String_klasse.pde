

void setup() {
  MyStringLL str1 =new MyStringLL("Hej med dig");
  MyStringLL str2 =new MyStringLL("HEJ MED DIG");

  println("Original: " + str1);
  println("toUpperCase: " + str1.toUpperCase());
  println("toLowerCase: " + str2.toLowerCase());
  println("length: " + str1.length());
  println("charAt(1): " + str1.charAt(1));
  //println("subString(0,4): " + str1.subString(0,4));
  //println("equals(str2): " + str1.equals(str2));
}

void draw() {
}
