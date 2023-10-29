import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uts/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyBannerSlider extends StatelessWidget {
  final List<String> bannerImages = [
    'https://img.freepik.com/free-psd/digital-marketing-facebook-banner-template_237398-233.jpg?size=626&ext=jpg',
    'https://img.freepik.com/free-psd/digital-marketing-agency-corporate-facebook-cover-template_106176-2258.jpg?size=626&ext=jpg',
    'https://img.freepik.com/free-psd/black-friday-super-sale-facebook-cover-template_106176-1539.jpg?size=626&ext=jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150.0,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
      items: bannerImages.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    int selectedIndex = 0;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Image.network(
                        "https://cdn-icons-png.flaticon.com/128/12555/12555823.png",
                        height: 60,
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                    Container(
                      // color: Colors.amber,
                      // width: 50,
                      padding: const EdgeInsets.only(right: 40),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://cdn-icons-png.flaticon.com/128/815/815252.png',
                            height: 50,                            
                            alignment: Alignment.centerRight),
                        onTap: () {},
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://cdn-icons-png.flaticon.com/128/1077/1077035.png',
                          height: 40,
                          alignment: Alignment.centerRight),
                      onTap: () {},
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    width: mediaQueryData.size.width - 30,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hi, Fiki Suganda",
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(right: 10, top: 10),
                              child: Container(
                                padding: const EdgeInsets.only(left: 10),
                                height: 70,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Your Balance",
                                    ),
                                    const Divider(height: 7, color: Colors.white),
                                    Row(
                                      children: [
                                        const Text("Rp 10.184  ", style: TextStyle(fontWeight: FontWeight.bold)),
                                        GestureDetector(
                                          onTap: () {
                                            // Fungsi yang akan dijalankan saat ikon ditekan
                                            _showPopup(context);
                                          },
                                          child: Image.network(
                                            'https://cdn-icons-png.flaticon.com/128/11519/11519985.png',
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 10, top: 10),
                              child: Container(
                                padding: const EdgeInsets.only(left: 10),
                                height: 70,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Bonus Balance",
                                    ),
                                    const Divider(height: 7, color: Colors.white),
                                    Row(
                                      children: [
                                        const Text("0  ", style: TextStyle(fontWeight: FontWeight.bold)),
                                        GestureDetector(
                                          onTap: () {
                                            // Fungsi yang akan dijalankan saat ikon ditekan
                                            _showPopup(context);
                                          },
                                          child: Image.network(
                                            'https://cdn-icons-png.flaticon.com/128/11519/11519985.png',
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )), //box merah

                Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: 
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Fungsi yang akan dijalankan saat ikon ditekan
                                  print('1');
                                },
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/9122/9122514.png',
                                  height: 30,
                                ),
                              ),
                              const Text(
                                "Top Up",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Fungsi yang akan dijalankan saat ikon ditekan
                                  print('Ikon ditekan');
                                },
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/9122/9122514.png',
                                  height: 30,
                                ),
                              ),
                              const Text(
                                "Top Up",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Fungsi yang akan dijalankan saat ikon ditekan
                                  print('Ikon ditekan');
                                },
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/9122/9122514.png',
                                  height: 30,
                                ),
                              ),
                              const Text(
                                "Top Up",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Fungsi yang akan dijalankan saat ikon ditekan
                                  print('Ikon ditekan');
                                },
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/9122/9122514.png',
                                  height: 30,
                                ),
                              ),
                              const Text(
                                "Top Up",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )),
                    ],
                  ),
                ), //box grey

                Column(
                  children: [
                    Container(
                      // baris 1
                      margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // Fungsi yang akan dijalankan saat ikon ditekan
                                      print('Ikon ditekan');
                                    },
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/128/9122/9122514.png',
                                      height: 40,
                                    ),
                                  ),
                                  const Text(
                                    "Pulsa/Data",
                                    style: TextStyle(
                                        fontSize: 14, height: 4),
                                  )
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // Fungsi yang akan dijalankan saat ikon ditekan
                                    },
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/128/9122/9122514.png',
                                      height: 40,
                                    ),
                                  ),
                                  const Text(
                                    "Pulsa/Data",
                                    style: TextStyle(
                                        fontSize: 14, height: 4),
                                  )
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // Fungsi yang akan dijalankan saat ikon ditekan
                                    },
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/128/9122/9122514.png',
                                      height: 40,
                                    ),
                                  ),
                                  const Text(
                                    "Pulsa/Data",
                                    style: TextStyle(
                                        fontSize: 14, height: 4),
                                  )
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // Fungsi yang akan dijalankan saat ikon ditekan
                                    },
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/128/9122/9122514.png',
                                      height: 40,
                                    ),
                                  ),
                                  const Text(
                                    "Pulsa/Data",
                                    style: TextStyle(
                                        fontSize: 14, height: 4),
                                  )
                                ],
                              )),
                          
                        ],
                      ),
                    ),
                    Container(
                      // baris 1
                      margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // Fungsi yang akan dijalankan saat ikon ditekan
                                    },
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/128/9122/9122514.png',
                                      height: 40,
                                    ),
                                  ),
                                  const Text(
                                    "Pulsa/Data",
                                    style: TextStyle(
                                        fontSize: 14, height: 4),
                                  )
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // Fungsi yang akan dijalankan saat ikon ditekan
                                    },
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/128/9122/9122514.png',
                                      height: 40,
                                    ),
                                  ),
                                  const Text(
                                    "Pulsa/Data",
                                    style: TextStyle(
                                        fontSize: 14, height: 4),
                                  )
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // Fungsi yang akan dijalankan saat ikon ditekan
                                    },
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/128/9122/9122514.png',
                                      height: 40,
                                    ),
                                  ),
                                  const Text(
                                    "Pulsa/Data",
                                    style: TextStyle(
                                        fontSize: 14, height: 4),
                                  )
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // Fungsi yang akan dijalankan saat ikon ditekan
                                    },
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/128/9122/9122514.png',
                                      height: 40,
                                    ),
                                  ),
                                  const Text(
                                    "Pulsa/Data",
                                    style: TextStyle(
                                        fontSize: 14, height: 4),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ), // item item

                MyBannerSlider()
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: MyFooter(
      //   selectedIndex: _selectedIndex,
      //   onTabTapped: (int index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => qrcode()));
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.qr_code, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 236, 235, 235),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: (int index) {
          switch (index) {
            case 0:
              // only scroll to top when current index is selected.

              // Navigator.pop(context);

              break;
            case 1:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Page1(
                            title: 'Transaction History',
                          )));
              break;
          }
          setState(
            () {
              selectedIndex = index;
            },
          );
        },
      ),
    );
  }

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Popup Title'),
          content: const Text('Isi dari popup dapat disesuaikan di sini.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Menutup popup
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
