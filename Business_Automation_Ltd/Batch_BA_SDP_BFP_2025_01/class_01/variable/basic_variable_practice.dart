void main(){
  Student student = Student(
      name: "Al amin",
      roll: 48,
      result: 3.89,
      isStudent: true,
      subject: ['Data Structure','Database Management', 'English', 'Math']
  );

  studentProfile(student);

  /// Map
  Map<String ,dynamic> person = {
    'Name' : "Md. Mehedi",
    'Age'   : 25,
    'Profession': "Job Holder"
  };
  print(person);

  Set<int> number = { 1,3,5,7,};
  print(number);
  number.add(9);
  print(number);

}

class Student{
  /// use all data type
  final String name;
  final int roll ;
  final double result ;
  final bool isStudent ;
  final List<String> subject;

  /// use constructor
  Student({required this.name, required this.roll, required this.result, required this.isStudent, required this.subject});

}

/// show Student profile
 void studentProfile(Student student){
   if(student.isStudent == true){
     print(
         '''
      Name    : ${student.name}
      Roll    : ${student.roll}
      Result  : ${student.result}
      Subject : ${student.subject}
      
      '''
     );
   }else{
     print("He don't a student");
   }
 }