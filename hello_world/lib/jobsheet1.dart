import 'dart:io'; // Import library 'dart:io' untuk input/output.
void main() { // Fungsi utama program.
  stdout.write("Masukkan nama depan : ");// Mencetak output untuk memasukkan nama depan.
  String namaD = stdin.readLineSync()!; // MEmbuat input dan menyimpannya dalam variabel 'namaD'.
  
  stdout.write("Masukkan nama belakang : ");// Mencetak output untuk memasukkan nama belakang.
  String namaB = stdin.readLineSync()!; // Membuat inputan dan menyimpannya dalam variabel 'namaB'.
  
  stdout.write("Masukkan umur anda : ");// Mencetak output untuk memasukkan umur.
  int umur = int.parse(stdin.readLineSync()!);// Membuat inputan, dikonfersi menjadi integer, dan menyimpannya dalam variabel 'umur'.
  
  print("-----------------------------------");
  print("nama anda = " + namaD + " " + namaB);// Mencetak nama lengkap pengguna dengan menggabungkan 'namaD' dan 'namaB' menggunakan perintah print.
  print("umur anda = $umur");// Mencetak umur pengguna dengan menggunakan string interpolation.
}
