void main() {
  // List: berurutan, boleh duplikat
  List<String> mk = ['AI', 'Basis Data', 'Flutter'];
  mk.add('Jaringan');
  mk.remove('Basis Data');
  print(mk);
  print('Jumlah: ${mk.length}, pertama: ${mk[0]}');

  // Set: unik, tanpa duplikat
  Set<int> angka = {1, 2, 3, 3, 2};
  angka.add(4);
  print(angka); // {1, 2, 3, 4}
  print(angka.contains(2));

  // Map: pasangan key-value
  Map<String, int> nilai = {'Budi': 80, 'Siti': 90};
  nilai['Andi'] = 75;
  nilai.remove('Budi');
  print(nilai);
  nilai.forEach((nama, n) => print('$nama -> $n'));

  // Operasi umum pada List (Halaman 7)
  var daftar = [5, 3, 8, 1];
  daftar.sort();
  print(daftar);
  print(daftar.where((e) => e > 3).toList());
  print(daftar.map((e) => e * 2).toList());
}