import 'dart:io';

void main() {
  // Input user
  stdout.write('Masukkan berat badan (kg): ');
  double berat = double.parse(stdin.readLineSync()!);
  
  stdout.write('Masukkan tinggi badan (cm): ');
  double tinggiCm = double.parse(stdin.readLineSync()!);

  //Mengubah tinggi badan dari cm ke meter
  double tinggiMeter = tinggiCm / 100;

  //Menghitung nilai BMI (Rumus: berat / (tinggi*tinggi))
  double bmi = berat / (tinggiMeter*tinggiMeter);

  //Menentukan kategori BMI
  String kategori;
  if (bmi < 18.5) {
    kategori = 'kurus';
  } else if(bmi >= 18.5 && bmi <=24.9) {
    kategori = 'normal';
  } else {
    kategori = 'gemuk';
  }

  //Menampilkan hasil
  print('===Hasil Analisis BMI===');
  print('Nilai BMI : ${bmi.toStringAsFixed(2)}');
  print('Kategori : $kategori');
}