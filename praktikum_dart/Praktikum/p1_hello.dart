import 'dart:io';

void main() {
  print('Hallo, Dart!');

  stdout.write('Masukkan nama Anda: ');
  String? nama = stdin.readLineSync();

  stdout.write('Masukkan NIM Anda: ');
  String? nim = stdin.readLineSync();

  stdout.write('Masukkan Program Studi Anda: ');
  String? prodi = stdin.readLineSync();

  print('Selamat datang, ${nama?.toUpperCase()}');
  print('NIM: $nim');
  print('Program Studi: $prodi');
}