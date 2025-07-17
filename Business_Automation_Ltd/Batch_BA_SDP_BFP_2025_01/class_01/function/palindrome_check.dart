bool isPalindrome(String text) {
  String reversed = text.split('').reversed.join('');
  return text == reversed;
}

void main() {
  print(isPalindrome("madam"));  
  print(isPalindrome("hello"));  
}
//Here madam is ture and hello is false

