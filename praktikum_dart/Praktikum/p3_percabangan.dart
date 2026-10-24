import 'dart:io';

void main() {
  // Operator
  int a = 10, b = 3;
  print('a + b = ${a + b}');
  print('a / b = ${a / b}'); // hasil double
  print('a ~/ b = ${a ~/ b}'); // pembagian bulat
  print('a % b = ${a % b}');
  print('a > b && b > 0 = ${a > b && b > 0}');

  // if - else if - else
  stdout.write('Masukkan nilai (0-100): ');
  int nilai = int.parse(stdin.readLineSync()!);

  String grade;
  if (nilai >= 85) {
    grade = 'A';
  } else if (nilai >= 70) {
    grade = 'B';
  } else if (nilai >= 55) {
    grade = 'C';
  } else {
    grade = 'D';
  }
  print('Grade: $grade');

  // Operator ternary
  print(nilai >= 60 ? 'Lulus' : 'Tidak lulus');

  // switch
  switch (grade) {
    case 'A':
      print('Sangat baik');
      break;
    case 'B':
      print('Baik');
      break;
    default:
      print('Perlu ditingkatkan');
  }
}