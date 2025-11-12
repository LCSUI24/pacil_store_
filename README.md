# pacil_store

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

***Tugas Individu 7***
**Pertanyaan Satu**
Widget tree adalah cara Flutter menyusun tampilan pada aplikasi dengan widget utama (parent) yang punya anak-anak widget (child\children). Setiap widget anak diatur oleh parent mereka.

**Pertanyaan Dua**
MyApp: mengatur warna utama dan warna pendukung pada aplikasi
MyHomePage: Main page
ItemCard: card untuk All Products, My Products, dan Create Products yang isinya ada icon, nama, warna, dan komponen-komponen lainnya
AppBar: menampilkan title di bagian atas web
SnackBar: notifikasi saat menekan tombol
MaterialApp: menyediakan dasar aplikasi dengan tema Material, routing, dan konfigurasi global

**Pertanyaan Tiga**
MaterialApp adalah Widget yang digunakan untuk menyediakan dasar aplikasi dengan tema Material, routing, dan konfigurasi global. widget ini digunakan sebagai widget root karena memberikan struktur dan pengaturan dasar aplikasi.

**Pertanyaan Empat**
StatelessWidget: Tidak memiliki status yang berubah (biasanya digunakan untuk UI yang statis atau tidak akan berubah)

StatefulWidget: Memiliki status yang dapat berubah (biasanya digunakan untuk UI dinamis yang akan selalu berubah seperti input atau animasi)

**Pertanyaan Lima**
BuildContext memungkinkan widget untuk menemukan dan mengakses karakteristik induknya, ini digunakan dalam metode build untuk mengakses warna primary aplikasi, mengakses width layar, dan menampilkan SnackBar.

**Pertanyaan Enam**
Hot Reload: tidak perlu build ulang seluruh kode, hanya build kode yang diubah

Hot Restart: Build ulang seluruh kode

***Tugas Individu 8***

**Pertanyaan satu**
Navigator.push(): push halaman diatas halaman lain sehingga memebentuk stack, jadi pengguna dapat kembali ke halaman sebelunya
Navigator.pushReplacement(): mengganti halaman lain (replace) dengan yang baru, jadi tidak bisa kembali ke halaman sebelumnya

**Pertanyaan Dua**
Scaffold berfungsi sebagai kerangka struktur dari aplikasinya yang berisi AppBarr, Body, dan lainnya, AppBar berfungsi sebagai seperti header yang biasanya menampilkan title, backgroumd color dan lain lain, Drawer berfungsi sebagai menu navigasi, dalam aplikasi berikut menggunakan LeftDrawer yang berada disebelah kiri

**Pertanyaan Tiga**
Padding berfungsi untuk mengatur jarak antar elemen
SingleChildScrollView berfungsi untuk memastikan user dapat mengakses semua field di form jika isi dari form tersebut melebihi size dari display
ListView berfungsi untuk menunjukkan list dari child widgets 
Layout Widget yang digunakan pada proyek ini terletak pada file productlist_form.dart untuk menampilkan semua form field pada page tersebut dan menjadi lebih responsif

**Pertanyaan Empat**
dengan mendefinisikan tema utama di MaterialApp