import 'dart:io';

// Fungsi dengan parameter dan return
int kuadrat(int x) {
  return x * x;
}

// Arrow function
int tambah(int a, int b) => a + b;

// Named parameter (sering dipakai pada widget Flutter)
void sapa({required String nama, String sapaan = 'Halo'}) {
  print('$sapaan, $nama!');
}

// Fungsi dengan perulangan
int faktorial(int n) {
  int hasil = 1;
  for (int i = 2; i <= n; i++) {
    hasil *= i;
  }
  return hasil;
}

void main() {
  // Perulangan for
  for (int i = 1; i <= 5; i++) {
    print('Kuadrat $i = ${kuadrat(i)}');
  }

  // Perulangan while
  int n = 3;
  while (n > 0) {
    print('Hitung mundur: $n');
    n--;
  }

  // Perulangan do-while (minimal dijalankan sekali)
  int x = 0;
  do {
    print('x = $x');
    x++;
  } while (x < 2);

  // Perulangan for-in
  for (var buah in ['Apel', 'Jeruk', 'Mangga']) {
    print(buah);
  }

  // Pengujian fungsi-fungsi lain
  print('3 + 4 = ${tambah(3, 4)}');
  sapa(nama: 'Dede');
  sapa(nama: 'Siti', sapaan: 'Selamat pagi');
  print('5! = ${faktorial(5)}');
}