import 'dart:io';

void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var result = tukar((1, 2));
  print('Setelah ditukar: $result');

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  print(mahasiswa = ('asd', 1));

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

praktikum1() {
  final list = [];
  list.length = 5;
  list[1] = 'Fiki Suganda';
  list[2] = 2141720111;
  assert(list.length == 5);
  print(list.length);
  print(list[1]);
  print(list[2]);
}

praktikum2() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  names1.add('Fiki Suganda');
  names1.add('2141720111');

  names2.addAll(names1);

  print(names1);
  print(names2);
  print(names3);
}

praktikum3() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(gifts);
  print(nobleGases);
}

praktikum4() {
  // var list = [1, 2, 3];
  // var list2 = [0, ...list];
  // print(list);
  // print(list2);
  // print(list2.length);

  // var list1 = ['1', '2', null];
  // print(list1);
  // var list3 = [0, ...?list1];
  // print(list3.length);

  // var promoActive = false;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // var listOfInts = [1, 2, 3];
  // var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  // assert(listOfStrings[1] == '#1');
  // print(listOfStrings);
}

praktikum5() {}