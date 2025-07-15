void main(){
  String name = "Abdur Rahman";
  int Serial_no = 25;
  bool joined_first_class = true;

  print("My Name is: $name");
  print("My Serial Number is: $Serial_no");
  print("joined_first_class: $joined_first_class");

  // String in dart
  String f_name,l_name;
  f_name = "Flutter";
  l_name = " Project";
  var full_name = f_name + l_name;
  print("Full Project Name is: $full_name");
  print("\n");
  
  // Set in dart
  Set<String> cities = {"Dhaka","Gazipur","Chandpur","Chattogram"};
  cities.add("Rangpur");
  cities.add("Barisal");
  cities.add("Dhaka");

  print(cities);
  print("\n");
  // Map in dart
  Map<String,String> capitals = {
    "Bangladesh":"Dhaka",
    "Pakistan": "Islamabad",
    "Japan":"Tokyo",
    "China":"Beijing"
  };

  capitals.forEach((country, capital) {
    print('The capital of $country is $capital');
  });

}