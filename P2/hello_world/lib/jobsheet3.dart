import 'dart:io';

void main() {
  print("Tugas if else");
  Tugas1();
  print("");

  print("Tugas Perulangan For");
  Tugas2();
  print("");

  print("Tugas Perulangan While");
  Tugas3();
  print("");

  print("Tugas Switch Case");
  Tugas4();
  print("");

  print("Tugas 5");
  tugas5();
  print("");
}

int Tugas1() {
  int oilThatShouldBuy = 1;
  bool adaTelur = true;
  
  if(oilThatShouldBuy == 1 && adaTelur==true){
    print("beli 6 botol minyak");
  }else{
    print("beli 1 botol minyak");
  }
  
  return oilThatShouldBuy;
}

Tugas2(){
  for(int i=1; i<=10; i++){
    for(int x=1; x<=i; x++){
      stdout.write("*");
    }
    stdout.writeln();
  }
}

Tugas3() {
  var i = 1;
  while (i <= 10) {
    var x = 10;
    while (x >= i) {
      stdout.write("*");
      x--;
    }
    print("");
    i++;
  }
}

void tugas5() {
  stdout.write('Masukkan alas segitiga : ');
  int input = int.parse(stdin.readLineSync()!);
  bool stop = false;

  if (input % 2 == 0) {
    print('Panjang segitiga harus ganjil');
    return;
  }

  for (int i = 1; i < input; i++) {
    for (int j = i; j < input; j++) {
      stdout.write(' ');
    }
    for (int j = 1; j < i * 2; j++) {
      stdout.write('*');
      if(j == input){
        stop = true;
        break;
      }
    }
    if(stop == true){
      break;
    }
    print('');
  }
}

Tugas4() {
stdout.write("Masukkan bilangan 1 : ");
final int firstNumber = int.parse(stdin.readLineSync()!);

stdout.write("Masukkan bilangan 2 : ");
final int secondNumber = int.parse(stdin.readLineSync()!);

stdout.write("Masukkan operator : ");
final operator = stdin.readLineSync()!;

switch (operator) {
  case '+':
    print(
      '$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}');
    break;
  case '-':
    print(
      '$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}');
    break;
  case '*':
    print(
      '$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}');
    break;
  case '/':
    print(
      '$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}');
    break;
  default:
    print('Operator tidak ditemukan');
  }
}