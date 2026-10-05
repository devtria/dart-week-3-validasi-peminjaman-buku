# Analisis Computational Thinking pada Program Peminjaman Buku

## 1. Decomposition

Decomposition adalah proses memecah masalah yang besar menjadi beberapa bagian yang lebih kecil dan mudah dikelola.

Pada program ini, masalah utamanya adalah bagaimana membuat sistem sederhana yang dapat mengatur peminjaman buku serta menghitung denda keterlambatan. Masalah tersebut kemudian dipecah menjadi beberapa bagian.

Bagian pertama adalah mengecek apakah sebuah buku dapat dipinjam. Tugas ini dilakukan oleh fungsi `validasiPeminjaman()`. Fungsi tersebut mengecek dua kondisi, yaitu apakah jumlah buku yang sedang dipinjam sudah mencapai batas maksimal tiga buku dan apakah buku yang ingin dipinjam sudah ada di dalam daftar pinjaman.

Bagian kedua adalah memproses peminjaman buku. Tugas ini dilakukan oleh fungsi `prosesPeminjaman()`. Fungsi tersebut menggunakan hasil dari `validasiPeminjaman()` untuk menentukan apakah buku dapat ditambahkan ke daftar pinjaman atau tidak.

Bagian ketiga adalah menghitung denda keterlambatan. Tugas ini dilakukan oleh fungsi `hitungBiayaDenda()`. Fungsi tersebut menghitung jumlah denda berdasarkan jumlah hari keterlambatan dengan tarif Rp1.000 per hari.

Bagian terakhir adalah menjalankan seluruh proses program yang dilakukan di dalam fungsi `main()`.

Dengan menggunakan Decomposition, program menjadi lebih terstruktur karena setiap fungsi memiliki tugas yang berbeda. Jika terdapat kesalahan pada salah satu bagian, kita juga dapat lebih mudah mencari bagian kode yang bermasalah.

## 2. Pattern Recognition

Pattern Recognition adalah proses mengenali pola atau aturan yang muncul dalam suatu masalah.

Pada program peminjaman buku ini terdapat beberapa pola yang dapat ditemukan.

Pola pertama adalah adanya batas maksimal jumlah buku yang dapat dipinjam. Program memiliki aturan bahwa pengguna hanya dapat meminjam maksimal tiga buku. Oleh karena itu, setiap kali pengguna ingin meminjam buku, jumlah buku yang sedang dipinjam harus diperiksa terlebih dahulu.

Pola kedua adalah buku yang sama tidak boleh dipinjam lebih dari satu kali. Program menggunakan pengecekan `contains()` untuk melihat apakah judul buku yang ingin dipinjam sudah terdapat di dalam daftar pinjaman.

Pola ketiga terdapat pada perhitungan denda. Denda dihitung berdasarkan jumlah hari keterlambatan dengan tarif Rp1.000 untuk setiap hari. Artinya, semakin banyak hari keterlambatan, semakin besar denda yang harus dibayar.

Dari pola-pola tersebut dapat diketahui bahwa setiap proses peminjaman selalu mengikuti aturan yang sama. Program tidak langsung menambahkan buku ke dalam daftar, tetapi melakukan pengecekan terlebih dahulu berdasarkan aturan yang telah ditentukan.

## 3. Abstraction

Abstraction adalah proses menyederhanakan suatu masalah dengan hanya mengambil informasi yang penting dan mengabaikan informasi yang tidak diperlukan.

Dalam program ini, sebuah buku sebenarnya memiliki banyak informasi, seperti judul, penulis, penerbit, tahun terbit, jumlah halaman, dan genre. Namun, program tidak membutuhkan semua informasi tersebut untuk menjalankan proses peminjaman.

Program hanya menggunakan nama atau judul buku yang disimpan dalam `List<String>`. Selain itu, program juga membutuhkan jumlah buku yang sedang dipinjam untuk menentukan apakah pengguna masih diperbolehkan meminjam buku.

Pada proses denda, program juga tidak membutuhkan informasi lengkap mengenai buku. Program hanya membutuhkan jumlah hari keterlambatan untuk menentukan jumlah denda yang harus dibayar.

Dengan demikian, program mengambil informasi yang benar-benar diperlukan dan mengabaikan informasi yang tidak berhubungan dengan proses yang sedang dilakukan.

Penggunaan fungsi juga merupakan salah satu bentuk abstraction. Misalnya, ketika `main()` memanggil `prosesPeminjaman()`, kita tidak perlu mengetahui seluruh proses pengecekan di dalam fungsi tersebut. Kita cukup mengetahui bahwa fungsi tersebut digunakan untuk melakukan proses peminjaman buku.

## 4. Algorithm

Algorithm adalah langkah-langkah atau prosedur yang digunakan untuk menyelesaikan suatu masalah.

Pada program ini, algoritma peminjaman buku dimulai ketika pengguna ingin meminjam sebuah buku. Program akan memanggil fungsi `prosesPeminjaman()` dengan membawa daftar buku yang sedang dipinjam dan nama buku yang ingin dipinjam.

Selanjutnya, fungsi `prosesPeminjaman()` akan memanggil `validasiPeminjaman()` untuk melakukan pengecekan.

Pertama, program memeriksa jumlah buku yang sedang dipinjam. Jika jumlahnya sudah mencapai tiga buku atau lebih, maka fungsi akan mengembalikan nilai `false`, sehingga peminjaman ditolak.

Jika jumlah buku masih kurang dari tiga, program kemudian memeriksa apakah buku yang ingin dipinjam sudah terdapat dalam daftar pinjaman. Jika buku tersebut sudah ada, maka fungsi kembali mengembalikan nilai `false` dan peminjaman ditolak.

Jika kedua kondisi tersebut tidak terpenuhi, fungsi mengembalikan nilai `true`. Artinya, buku dapat dipinjam dan kemudian ditambahkan ke dalam daftar pinjaman.

Selain algoritma peminjaman, terdapat juga algoritma untuk menghitung denda. Program menerima jumlah hari keterlambatan. Jika jumlah hari keterlambatan kurang dari atau sama dengan nol, maka denda yang diberikan adalah Rp0. Jika jumlah hari keterlambatan lebih dari nol, program mengalikan jumlah hari tersebut dengan Rp1.000.

Sebagai contoh, jika pengguna terlambat selama tiga hari, maka denda dihitung dengan rumus:

Denda = 3 × Rp1.000

Hasilnya adalah Rp3.000.

Dengan menerapkan Computational Thinking, masalah yang awalnya terlihat seperti satu masalah besar dapat dipecah menjadi beberapa bagian yang lebih sederhana. Setiap bagian kemudian dapat dibuat menjadi logika program yang jelas, terstruktur, dan lebih mudah dipahami.

## Flowchart
                         START
                           |
                           v
              Inisialisasi daftar pinjaman
                           |
                           v
                Tampilkan daftar awal
                           |
                           v
                 Input judul buku
                           |
                           v
                 Jumlah buku >= 3?
                    /           \
                  Ya             Tidak
                  |                |
                  v                v
       "peminjaman ditolak"    Buku sudah ada?
                  |             /        \
                  |           Ya          Tidak
                  |           |             |
                  |           v             v
                  |  "peminjaman ditolak"  Tambahkan buku
                  |           |             |
                  |           |             v
                  |           |     "peminjaman berhasil"
                  |           |             |
                  +-----------+-------------+
                              |
                              v
                   Tampilkan daftar akhir
                              |
                              v
                  Input jumlah hari terlambat
                              |
                              v
                    Hari terlambat <= 0?
                       /             \
                     Ya               Tidak
                     |                  |
                     v                  v
                  Denda = 0    Denda = hari × 1.000
                     |                  |
                     +--------+---------+
                              |
                              v
                    Tampilkan hasil denda
                              |
                              v
                             END
