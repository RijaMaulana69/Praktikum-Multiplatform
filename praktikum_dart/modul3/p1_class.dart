class Mahasiswa {
  final String nim;
  String nama;
  double _ipk; //diawali_ = privat (per file /liblary)

//Constructor biasa
Mahasiswa(this.nim, this.nama, this._ipk);

//Named constructor
Mahasiswa.baru(this.nim, this.nama): _ipk = 0.0;

//Getter
double get ipk => _ipk;

//Setter dengan validasi
set ipk(double nilai) {
  if (nilai >= 0 && nilai <= 4) {
    _ipk = nilai;
  } else {
    print('IPK tidak valid : $nilai');
  }
}

void perkenalan() {
  print('saya $nama  (NIM $nim), IPK ${_ipk.toStringAsFixed(2)}');
}

@override
  String toString() => 'Mahasiswa($nim, $nama)';
}

void main() {
  var m1 = Mahasiswa('2021001', 'Budi', 3.5);
  var m2 = Mahasiswa.baru('2021002', 'Siti');

  m1.perkenalan();
  m2.perkenalan();

  m2.ipk = 3.8; //memakai setter
  m2.ipk = -1; //ditolak validasi
  print(m2); //memakai toString()
}
