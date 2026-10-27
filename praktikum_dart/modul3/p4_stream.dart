import 'dart:async';
// Stream dengan async* dan yeild
Stream<int> hitungMundur (int n) async* {
  for (int i = n; i > 0; i--) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  //1. await for
  print('--- await for ---');
  await for (var angka in hitungMundur(3)) {
    print('Hitung : $angka');
  }
  print('Selesai!');

  //2. StreamController + listen
  print('--- StreamController ---');
  final controller = StreamController<String>();

  controller.stream.listen(
      (pesan) => print('Terima : $pesan'),
    onError: (e) => print('Error : $e'),
    onDone: () => print('Stream ditutup'),
  );
  controller.add('Pesan 1');
  controller.add('Pesan 2');
  controller.addError('Contoh error');
  controller.add('Pesan 3');
  await controller.close();

  //3. Transformasi stream
  print('--- map & where ---');
  var genap = Stream.fromIterable([1, 2, 3, 4, 5, 6])
      .where((e) => e % 2 == 0)
      .map((e) => e * 10);
  await for (var x in genap) {
    print(x);
  }
}