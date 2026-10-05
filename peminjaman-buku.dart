bool validasiPeminjaman(List<String> koleksiDipinjam, String namaBuku) {
  if (koleksiDipinjam.length >= 3) {
    return false;
  }

  if (koleksiDipinjam.contains(namaBuku)) {
    return false;
  }

  return true;
}

void prosesPeminjaman(List<String> koleksiDipinjam, String namaBuku) {
  if (validasiPeminjaman(koleksiDipinjam, namaBuku)) {
    koleksiDipinjam.add(namaBuku);
    print('Peminjaman "$namaBuku" berhasil');
  } else {
    print('Peminjaman "$namaBuku" ditolak');
  }
}

int hitungBiayaDenda(int jumlahHari) {
  if (jumlahHari <= 0) {
    return 0;
  }

  return jumlahHari * 1000;
}

void main() {
  List<String> bukuYangDipinjam = [
    'Bumi',
    'Laskar Pelangi'
  ];

  print('Daftar Pinjaman: $bukuYangDipinjam');
  print('-----------------------------------');

  prosesPeminjaman(bukuYangDipinjam, 'Bumi');
  prosesPeminjaman(bukuYangDipinjam, 'Filosofi Teras');
  prosesPeminjaman(bukuYangDipinjam, 'Laut Bercerita');

  print('-----------------------------------');
  print('Pinjaman Terakhir: $bukuYangDipinjam');

  print('Denda 0 hari : Rp ${hitungBiayaDenda(0)}');
  print('Denda 3 hari : Rp ${hitungBiayaDenda(3)}');
}