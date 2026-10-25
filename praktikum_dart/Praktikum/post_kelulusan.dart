import 'dart:io';

void main() {
  //Meminta masukkan dari user
  stdout.write('Masukkan nilai Mahasiswa: ');
  double nilai = double.parse(stdin.readLineSync()!);

  // Percabangan if - else menentukan kelulusan
  if (nilai >= 70) {
    print('Mahasiswa dinyatakan LULUS');
  } else {
    print('Mahasiswa dinyatakan TIDAK LULUS');
  }
}