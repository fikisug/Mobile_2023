import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key, required this.title});

  final String title;

  @override
  State<Page1> createState() => _Page1();
}

class _Page1 extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 1;
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Transaction History'), centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(
                          left: mediaQueryData.size.width / 2 / 2 - 30,
                          right: mediaQueryData.size.width / 2 / 2 - 30,
                          top: 10,
                          bottom: 10),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.red, // Warna garis bawah
                            width: 2.0, // Ketebalan garis bawah
                          ),
                        ),
                      ),
                      child: const Text(
                        "Pending",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold, // Warna teks
                          decoration: TextDecoration
                              .none, // Hilangkan garis bawah bawaan teks
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(
                          left: mediaQueryData.size.width / 2 / 2 - 30,
                          right: mediaQueryData.size.width / 2 / 2 - 30,
                          top: 10,
                          bottom: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey.shade300, // Warna garis bawah
                            width: 2.0, // Ketebalan garis bawah
                          ),
                        ),
                      ),
                      child: const Text(
                        "Done",
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration
                              .none, // Hilangkan garis bawah bawaan teks
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Center(
            heightFactor: 2.4,
            child: Column(
              children: [
                Image.network(
                  "https://cdn-icons-png.flaticon.com/128/12555/12555823.png",
                  height: 200,
                ),
                const Text("All transaction is completed!", style: TextStyle(fontWeight: FontWeight.bold),),
                const Text("Any pending transaction will appear in this page", style: TextStyle(color: Colors.grey),)
              ],
            ),
          )
        ],
      ),
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

              Navigator.pop(context);

              break;
            case 1:
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Page1()));
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
}
