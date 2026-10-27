//Abstract class: tidak bisa diinstansiasi
abstract class Pengguna {
  final String nama;
  Pengguna(this.nama);

  String peran(); //wajib di-override
  void info() => print('$nama - ${peran()}');
}

//Mixin: kemampuan tambahan yang bisa dipakai banyak class
mixin Login {
  bool _masuk = false;
}