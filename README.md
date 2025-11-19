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

***Tugas Individu 8***

**Pertanyaan satu**
Model dart diperlukan untuk menjamin type safety yang memastikan masing-masing tipe data dan null safety yang menentukan variabel mana saja yang bisa null. Jika kita ingin mengubah kode keita (refactor) kita juga harus melakukannya secara manual dan itu sangat bisa menyebabkan kesalahan dan hal tersebut dapat dipermudah dengan menggunakan model dart

**Pertanyaan dua**
http berfungsi untuk melakukan permintaan HTTP standar yang bersifat stateless, sehingga tidak akan menyimpan informasi sesi antar request

CookieRequest adalah wrapper khusus untuk menyimpan dan mengelola cookies (sessionid) secara otomatis

Perbedaannya adalah http akan melupakan status login pengguna setelah request selesai, sedangkan CookieRequest akan mengingat status tersebut agar pengguna tetap terdeteksi login di request berikutnya.

**Pertanyaan tiga**
Instance CookieRequest menyimpan data sesi login (cookie) untuk pengguna yang sedang aktif. Jika kita membuat instance baru di setiap halaman, data sesi tersebut akan hilang (kosong) dan server akan menganggap pengguna belum login.

**Pertanyaan empat**
Alamat 10.0.2.2 diperlukan karena emulator Android menganggap localhost sebagai dirinya sendiri, sehingga IP ini digunakan untuk merujuk ke komputer host tempat Django berjalan. CORS dan ALLOWED_HOSTS diaktifkan agar Django tidak memblokir permintaan dari domain/IP asing, sementara izin internet di Android Manifest memberikan hak legal bagi aplikasi untuk mengakses jaringan. Tanpa konfigurasi ini, komunikasi akan gagal total dengan pesan error seperti Connection Refused atau 403 Forbidden.

**Pertanyaan lima**
Pertama data diinput user di Flutter lalu dikonversi menjadi format JSON dan dikirimkan ke Django melalui metode POST. Django akan memvalidasi data tersebut dan menyimpan data tersebut ke dalam database. Kemudian, Flutter melakukan permintaan (GET) untuk mengambil data terbaru, menerima respon JSON, mengonversinya menjadi objek Model Dart, dan menampilkannya ke layar menggunakan widget seperti FutureBuilder atau ListView.

**Pertanyaan enam**
Saat login, Flutter akan mengirim credential ke Django kemudian akan diverifikasi dan membuat sesi di server serta mengirimkan session cookie kembali ke Flutter. CookieRequest akan menangkap dan menyimpan cookie tersebut di memori lokal aplikasi sebagai tanda bukti autentikasi. Saat logout, aplikasi meminta server menghapus sesi dan secara lokal membuang cookie tersebut, sehingga akses pengguna kembali tertutup.

**Pertanyaan tujuh**
Buat app authentication. Di dalamnya, buat fungsi login, register, dan logout. Install django-cors-headers. Di settings.py, tambahkan ke INSTALLED_APPS dan MIDDLEWARE agar Django mengizinkan request dari Flutter. Atur CORS_ALLOW_ALL_ORIGINS = True dan tambahkan 10.0.2.2 ke ALLOWED_HOSTS. Tambahkan package provider dan pbp_django_auth (untuk menangani cookie & request) di pubspec yaml. Di main.dart, bungkus widget utama (MaterialApp) dengan Provider. Buat form input. Saat tombol ditekan, panggil request.login. Gunakan Navigator.pushReplacement untuk masuk ke menu utama (agar user tidak bisa kembali ke login dengan tombol back). Mirip login, tapi panggil request.post. Jika sukses, arahkan user kembali ke halaman login atau beri notifikasi SnackBar. Tambahkan tombol logout. menambah filter di bagian yang menampilkan produk list dan my product
