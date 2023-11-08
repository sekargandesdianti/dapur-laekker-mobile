TUGAS 7 PEMROGRAMAN BERBASIS PLATFORM
---
Nama    : Sekar Gandes Dianti

NPM     : 2206082713

Kelas   : PBP D

Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
---
Dalam Flutter, widget dibagi menjadi dua jenis: stateless widgets dan stateful widgets. Perbedaan utama antara widget tanpa keadaan dan widget dengan keadaan dalam Flutter adalah sebagai berikut:

Stateless Widget:
- Bersifat tak berubah dan tidak dapat mengubah keadaannya selama aplikasi berjalan
- Penampilan dan propertinya tetap tidak berubah sepanjang masa hidup widget
- Contoh-contoh mencakup teks, ikon, tombol ikon, dan tombol naik

Stateful Widget:
- Dinamis dan dapat mengubah penampilannya sebagai respons terhadap peristiwa yang dipicu oleh interaksi pengguna atau saat menerima data
- Dapat mempertahankan keadaan internalnya seiring berjalannya waktu, memungkinkan aplikasi Flutter mengelola data dinamis dan berinteraksi dengan pengguna
- Terdiri dari dua kelas terpisah: kelas widget itu sendiri, yang bersifat tak berubah, dan kelas keadaan yang sesuai, yang bersifat mutable dan menyimpan data keadaan
- Contoh-contoh mencakup kotak centang (checkboxes), tombol radio, slider, InkWell, Form, dan TextField

Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
---
1. `Scaffold`: Kerangka dasar aplikasi Flutter yang menyediakan struktur dasar untuk aplikasi, termasuk AppBar dan tempat untuk menempatkan halaman lainnya.
2. `AppBar`: Widget yang digunakan untuk menampilkan bilah atas (app bar) di aplikasi Anda. Di sini, itu menampilkan judul "Dapur Laekker".
3. `Builder`: Widget yang digunakan untuk membuat `BuildContext` lokal yang diperlukan untuk menampilkan `SnackBar`. Ini membantu dalam mengakses `ScaffoldMessenger` dalam widget.
4. `Column`: Widget layout yang mengatur anak-anaknya dalam satu kolom. Dalam kode ini, itu digunakan untuk mengatur elemen-elemen UI vertikal, termasuk judul "Shop Inventory" dan daftar tombol.
5. `ListView.builder`: Widget yang digunakan untuk membuat daftar elemen dengan jumlah yang dinamis. Dalam kode ini, itu digunakan untuk membuat daftar tombol berdasarkan jumlah elemen dalam `items` list.
6. `Container`: Widget yang digunakan untuk mengelompokkan elemen-elemen lain dalam kotak dan memberikan margin atau padding. Di sini, itu digunakan untuk mengelompokkan setiap tombol dan memberikan margin pada setiap tombol.
7. `ElevatedButton.icon`: Tombol yang berisi ikon dan teks. Di sini, itu digunakan untuk membuat tombol dengan ikon dari `items[index].icon` dan teks dari `items[index].name`.
8. `Icon`: Widget yang digunakan untuk menampilkan ikon. Di sini, itu digunakan dalam `ElevatedButton.icon` untuk menampilkan ikon yang sesuai dengan setiap item toko.
9. `Text`: Widget yang digunakan untuk menampilkan teks. Di sini, itu digunakan dalam `ElevatedButton.icon` untuk menampilkan nama setiap item toko.
10. `SnackBar`: Widget yang digunakan untuk menampilkan pesan sementara di bagian bawah layar. Dalam kode ini, digunakan untuk menampilkan pesan saat tombol pada daftar ditekan.

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial
)
---
1. Membuat Program Flutter Baru
    - Melakukan perintah `flutter create dapur_laekker` pada command prompt
2. Membuat Tombol:
    - Membuat kelas `ShopItem` dengan atribut `name` dan `icon` pada `inventory.dart`
    - Menambahkan `ElevatedButton.icon` pada `ListView.builder` sebagai child
3. Memunculkan Snackbar:
    - Menambahkan metode `showSnackbarMessage` di dalam `ElevatedButton.icon` pada `ListView.builder` di bagian `onPressed`

Referensi Tugas 7:
- https://www.geeksforgeeks.org/difference-between-stateless-and-stateful-widget-in-flutter/

