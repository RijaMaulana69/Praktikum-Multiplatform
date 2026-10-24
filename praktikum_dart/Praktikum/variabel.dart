import 'dart:io';

void main() {
  // Variabel dan tipe data
  String nama = 'Budi';
  int umur = 20;
  double ipk = 3.75;
  bool aktif = true;
  var kota = 'Kuningan'; // tipe disimpulkan otomatis (String)

  // Konstanta
  final DateTime waktu = DateTime.now(); // ditentukan saat runtime
  const double pi = 3.14159; // ditentukan saat kompilasi

  print('$nama, $umur tahun, IPK $ipk, aktif: $aktif, kota: $kota');
  print('Waktu: $waktu | Pi: $pi');

  // Null safety
  String? alamat; // boleh null
  print(alamat); // null
  print(alamat?.length); // null (aman)
  print(alamat ?? 'Belum diisi'); // nilai default

  alamat = 'Jl. Tol Cipali';
  print(alamat.length); // aman setelah diisi

  // late: diisi kemudian, tidak boleh null saat dipakai
  late String hobi;
  hobi = 'Membaca';
  print(hobi);
}