class Student {
  String name;
  int age;
  int grade;

  Student(this.name, this.age, this.grade);

  void student_info() => print("Name: ${name}, age: ${age}, grade level: ${grade}");
  }

class Teacher{
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void teacher_info() => print("Name: ${name}, age: ${age}, subject : ${subject}");
}

class Info{
  Student? student;
  Teacher? teacher;

  void create_student(String name, int age, int grade){
    student = Student(name, age, grade);
  }

  void create_teacher(String name, int age, String subject){
    teacher = Teacher(name, age, subject);
  }

  void print_info(){
    student?.student_info();
    teacher?.teacher_info();
  }
}

void main(){
  var info_1 = Info();
  info_1.create_student('Louisa Cruz', 17, 13);
  info_1.create_teacher('Beatrice Goodwin', 45, 'English');
  info_1.print_info();
}