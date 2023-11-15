TUGAS 7 PEMROGRAMAN BERBASIS PLATFORM
---
Nama    : Sekar Gandes Dianti

NPM     : 2206082713

Kelas   : PBP D

### Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Dalam Flutter, widget dibagi menjadi dua jenis: stateless widgets dan stateful widgets. Perbedaan utama antara widget tanpa keadaan dan widget dengan keadaan dalam Flutter adalah sebagai berikut:

**Stateless Widget:**
- Bersifat tak berubah dan tidak dapat mengubah keadaannya selama aplikasi berjalan
- Penampilan dan propertinya tetap tidak berubah sepanjang masa hidup widget
- Contoh-contoh mencakup teks, ikon, tombol ikon, dan tombol naik

**Stateful Widget:**
- Dinamis dan dapat mengubah penampilannya sebagai respons terhadap peristiwa yang dipicu oleh interaksi pengguna atau saat menerima data
- Dapat mempertahankan keadaan internalnya seiring berjalannya waktu, memungkinkan aplikasi Flutter mengelola data dinamis dan berinteraksi dengan pengguna
- Terdiri dari dua kelas terpisah: kelas widget itu sendiri, yang bersifat tak berubah, dan kelas keadaan yang sesuai, yang bersifat mutable dan menyimpan data keadaan
- Contoh-contoh mencakup kotak centang (checkboxes), tombol radio, slider, InkWell, Form, dan TextField

### Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
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

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
1. Membuat Program Flutter Baru
    - Melakukan perintah `flutter create dapur_laekker` pada command prompt
2. Membuat Tombol:
    - Membuat kelas `ShopItem` dengan atribut `name` dan `icon` pada `inventory.dart`
    - Menambahkan `ElevatedButton.icon` pada `ListView.builder` sebagai child
3. Memunculkan Snackbar:
    - Menambahkan metode `showSnackbarMessage` di dalam `ElevatedButton.icon` pada `ListView.builder` di bagian `onPressed`

### Referensi Tugas 7
- https://www.geeksforgeeks.org/difference-between-stateless-and-stateful-widget-in-flutter/

TUGAS 8 PEMROGRAMAN BERBASIS PLATFORM
---

### Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
Di Flutter, kelas `Navigator` digunakan untuk mengelola navigasi halaman. Dua metode penting untuk bernavigasi antar halaman adalah `Navigator.push()` dan `Navigator.pushReplacement()`. Perbedaan antara keduanya adalah sebagai berikut.

**Navigator.push()**\
Metode ini digunakan untuk menavigasi ke halaman baru dan menambahkannya di bagian atas (top) stack navigasi. Dengan `Navigator.push()`, user dapat menavigasikan kembali ke halaman sebelumnya menggunakan tombok `Back`.\
Contoh penggunaan `Navigator.push()`pada tugas ini adalah sebagai berikut.
```
...
onTap: () {
    Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => const ShopFormPage(),
        ));
},
...
```
Dari potongan kode di atas, ketika `Tambah Item` pada drawer ditekan, aplikasi akan menavigasikan user ke halaman `ShopFormPage` dan ketika user menekan tombol `Back`, maka user akan dinavigasikan ke halaman yang diakses sebelumnya.

**Navigator.pushReplacement()**\
Metode ini digunakan untuk mengganti halaman yang saat ini diakses dengan halaman baru dalam stack navigasi (halaman yang saat ini diakses, dihapus dari stack). Dengan `Navigator.pushReplacement()`, user tidak dapat kembali ke halaman yang diakses sebelumnya dengan menggunakan tombol `Back`.\
Contoh penggunaan `Navigator.pushReplacement()` pada tugas ini adalah sebagai berikut.
```
...
onTap: () {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
        builder: (context) => MyHomePage(),
        ));
},
...
```
Dari potongan di atas, ketika `Halaman Utama` pada drawer ditekan, aplikasi akan menavigasikan user ke `MyHomePage()`, akan tetapi ketika tombol `Back` ditekan setelahnya, user tidak akan kembali ke halaman yang diakses sebelumnya.

### Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
1. **Single-chiled layout widgets**
    - `Align`:  digunakan untuk menempatkan satu elemen tunggal dalam wadah atau tata letak tertentu. Widget ini memungkinkan kita mengatur elemen dalam container dengan memberikan properti seperti `alignment` untuk mengontrol posisinya.
    - `Center`: digunakan untuk menempatkan elemen anaknya di tengah-tengah dari tata letak parent. Cocok untuk kasus di mana elemen tunggal perlu ditempatkan secara sentral.
    - `Container`: adalah wadah serbaguna yang dapat digunakan untuk mengelola dan mendekorasi elemen anaknya. Ini dapat mengontrol berbagai properti seperti margin, padding, warna latar belakang, dan lainnya.
    - `Padding`: digunakan untuk menambahkan ruang atau jarak di sekitar elemen anaknya. Dapat digunakan untuk memberikan ruang antara elemen dan batas tata letak parent.
    - `Baseline`: digunakan untuk menempatkan elemen anaknya pada garis dasar tertentu, berguna ketika perlu menyusun elemen-elemen dengan merujuk pada tinggi dasar tertentu.
    - `ConstrainedBox`: digunakan untuk memberlakukan batasan ukuran pada elemen anaknya. Ini memungkinkan kita menentukan batasan maksimum dan minimum untuk lebar, tinggi, atau keduanya.
    - `SizedBox`: digunakan untuk memberikan batasan ukuran tertentu pada elemen. Berguna untuk memberikan dimensi tetap pada elemen tanpa mempengaruhi tata letak sekitarnya.
2. **Multi-child layout widgets**
    - `Column`: digunakan untuk menempatkan elemen-elemen anaknya dalam satu kolom vertikal. Berguna untuk membuat tata letak vertikal seperti daftar atau bagian-bagian dalam antarmuka pengguna.
    - `Row`: digunakan untuk menempatkan elemen-elemen anaknya dalam satu baris horizontal. Cocok untuk menyusun beberapa elemen secara berdampingan.
    - `GridView`: digunakan untuk menempatkan elemen-elemen dalam bentuk grid. Cocok untuk menampilkan elemen-elemen dalam susunan kolom dan baris, seperti galeri gambar atau tata letak bergrid.
    - `ListView`: digunakan untuk menangani daftar elemen yang dapat discroll, baik secara vertikal maupun horizontal. Cocok untuk daftar panjang atau tata letak yang memerlukan fitur scrolldown.
    - `Stack`: digunakan untuk menempatkan elemen-elemen dalam lapisan tumpuk di atas satu sama lain. Berguna untuk membuat tata letak yang kompleks, seperti tata letak lapisan atau tata letak yang membutuhkan elemen-elemen yang tumpang tindih.
    - `Wrap`: digunakan untuk menempatkan elemen-elemen dalam baris atau kolom, melompat ke baris atau kolom berikutnya jika ruang tidak mencukupi.
    - `Flow`: digunakan untuk menempatkan elemen-elemen dalam tata letak alur (flow layout), diatur berdasarkan arah aliran dan properti-properti lainnya.
3. **Sliver layout widgets**
    - `SliverAppBar`: digunakan untuk membuat app bar yang melibatkan model tata letak sliver. Ini dapat menyusut dan melebar ketika pengguna menggulir konten, memberikan pengalaman UI yang interaktif dan dinamis.
    - `CustomScrollView`: digunakan sebagai wadah untuk elemen-elemen sliver dalam tata letak sliver. Memungkinkan penggunaan berbagai slivers seperti SliverList dan SliverGrid dalam satu tampilan yang dapat discroll.
    - `SliverGrid`: digunakan untuk membuat grid dalam model tata letak sliver. Cocok untuk menampilkan elemen-elemen dalam bentuk grid dengan kemampuan scrolldown.
    - `SliverList`: digunakan untuk menampilkan daftar elemen dalam model tata letak sliver. Berguna untuk menangani daftar panjang dengan kemampuan scrolldown.
    - `SliverPadding`: digunakan untuk memberikan padding pada model tata letak sliver. Cocok untuk memberikan ruang ekstra di sekitar elemen-elemen sliver dalam `CustomScrollView`.

### Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Dalam tugas ini, elemen input yang digunakan pada formulir adalah `TextFormField` untuk mengumpulkan informasi seperti Nama Item, Jumlah, dan Deskripsi dari pengguna. Penggunaan `TextFormField` dipilih karena memberikan dukungan bawaan untuk validasi input, memungkinkan penanganan pesan kesalahan dengan mudah jika pengguna memasukkan data yang tidak valid. Selain itu, keterhubungan langsung dengan `Form` widget mempermudah integrasi dalam formulir dan pengelolaan formulir yang kompleks. Dengan menggunakan `TextFormField`, formulir dapat diimplementasikan dengan dukungan validasi yang baik, memastikan bahwa data yang dimasukkan oleh pengguna sesuai dengan kebutuhan aplikasi.

### Bagaimana penerapan clean architecture pada aplikasi Flutter?
**Clean Architecture** adalah prinsip desain perangkat lunak yang memisahkan aplikasi menjadi tiga lapisan utama: presentasi, domain, dan data. Penerapan prinsip desain ini menyebabkan peningkatan uji, pemeliharaan, dan skalabilitas dari aplikasi.

**Lapisan-lapisan pada prinsip clean architecture adalah sebagai berikut.**
1. **Presentasi**\
    Lapisan ini berisi komponen antarmuka pengguna, seperti widget, layar, dan tampilan. Tanggung jawabnya adalah menangani interaksi pengguna dan merender antarmuka pengguna.
2. **Domain**\
    Lapisan domain mewakili logika bisnis inti aplikasi. Ini berisi kasus penggunaan, entitas, dan aturan bisnis. Kasus penggunaan menentukan operasi atau tindakan yang dapat dilakukan dalam aplikasi. Entitas mewakili objek-objek penting dalam domain dan mengemas perilaku dan statusnya.
3. **Data**\
   Lapisan data bertanggung jawab atas pengambilan dan penyimpanan data. Ini terdiri dari repositori dan sumber data. Repositori menyediakan lapisan abstraksi untuk mengakses dan memanipulasi data. Mereka menentukan kontrak atau antarmuka untuk operasi data, yang diimplementasikan oleh sumber data. Sumber data dapat berupa remote API, basis data lokal, atau penyedia data eksternal lainnya.  


**Langkah-langkah yang dapat dilakukan untuk menerapkan clean architecture adalah sebagai berikut.**
1. Buat struktur proyek ke dalam lapisan terpisah. 
2. Tentukan entitas pada lapisan domain. Entitas ini mewakili aturan bisnis inti tanpa bergantung pada implementasi teknis.
3. Tentukan use cases pada lapisan domain. Use cases berisi logika bisnis dan aturan penggunaan aplikasi.
4. Tentukan repositori pada lapisan data. Repositori digunakan untuk menyediakan abstraksi untuk mendapatkan atau menyimpan data dari dan ke sumber eksternal, seperti database atau API.
5. Implementasikan antarmuka. Antarmuka adalah kontrak yang menentukan interaksi antara lapisan. Mereka harus ditentukan di lapisan domain dan diimplementasikan di lapisan presentasi dan data.
6. Implementasikan sumber data. Sumber data adalah objek yang menyediakan data untuk aplikasi. Mereka harus diimplementasikan di lapisan data.
7. Implementasikan komponen UI. Komponen UI adalah objek yang menampilkan data kepada pengguna. Mereka harus diimplementasikan di lapisan presentasi.
8. Implementasikan kasus penggunaan pada lapisan domain.
9. Hubungkan dependensi antar lapisan menggunakan injeksi dependensi.

### Referensi Tugas 8
- Tutorial 7 PBP
- https://docs.flutter.dev/ui/widgets/layout?gclid=CjwKCAiA0syqBhBxEiwAeNx9N6dpfC05xsYprqHviq2r8-lLiip0G1SVmuBtahw7vs6vj1xyPCMvaBoCBMIQAvD_BwE&gclsrc=aw.ds
- https://stackoverflow.com/questions/61290696/flutter-way-to-implement-clean-architecture
- https://mobileappcircular.com/clean-architecture-in-flutter-a-quick-beginners-guide-844e89174655 
- https://medium.com/@samra.sajjad0001/flutter-clean-architecture-5de5e9b8d093
