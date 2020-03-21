void main() {
  
  String sentence1 = "We have 345 apples";
  String sentence2 = "53 pears are in my car";
  
  //print out the # of total fruit
  
  countFruitExtraSmart(sentence1,sentence2);
 
}

bool isNumeric(String s) {
 if (s == null) {
   return false;
 }
 return double.tryParse(s) != null;
}

void countFruitExtraSmart(String str1, String str2) {
  
  String FirstNumber = '';
  String SecondNumber = '';
  
  for (int i=0;i<str1.length;i++) {
    if (isNumeric(str1[i])) {
      FirstNumber = FirstNumber + str1[i];
    }
    else {
      
    }
  }
  
  for (int i=0;i<str2.length;i++) {
    if (isNumeric(str2[i])) {
      SecondNumber = SecondNumber + str2[i];
    }
    else {
      
    }
  }
  
  print(FirstNumber);
  print(SecondNumber);
  
}
