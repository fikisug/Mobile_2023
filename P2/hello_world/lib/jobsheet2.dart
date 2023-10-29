import 'dart:io';

void main(){
  stdout.write("Masukkan nama anda : ");
  String nama = stdin.readLineSync()!;
  stdout.write("Masukkan umur anda : ");
  int umur = int.parse(stdin.readLineSync()!);
  print("nama anda = " +nama);
  print("umur anda = $umur");
}