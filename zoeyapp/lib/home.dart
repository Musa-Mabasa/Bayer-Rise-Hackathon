import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoeyapp/ask.dart';
import 'package:zoeyapp/pages/dischem.dart';
import 'health.dart';
import 'info.dart';
import 'panic.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          // menubarWidget(MediaQuery.of(context).size, context),
          headerWidget(context),
          searchBar(context),
          const SizedBox(
            height: 20,
          ),
          const Pharmacy(),
        ],
      ),
    );
  }
}

class Pharmacy extends StatelessWidget {
  const Pharmacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthOfScreen = MediaQuery.of(context).size.width;
    int crossAxis = 1;
    if (widthOfScreen < 400.0) {
      crossAxis = 1;
    } else {
      crossAxis = 1;
    }

    return Flexible(
      child: GridView.count(
        childAspectRatio: 2,
        padding: const EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: crossAxis,
        crossAxisSpacing: 18,
        mainAxisSpacing: 18,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DisChem()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/gps.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Dis-Chem",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    "Open",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "Village Shopping Centre, Oxford Str",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Info()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/gps.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Clicks",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    "Open",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "Shop 63 Sanlam Centre, Oak Ave",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Health()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/gps.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Byanston Pharmacy",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    "Closed",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "Opens 8:30am tomorrow",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "3000 William Nicole Dr, Bryanston",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const ___),
              // );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/gps.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Guardian Pharmacy",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    "Open",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "47 Main Street, Sandton",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Ask()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/gps.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Randcity Pharmacy",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    "Open",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "Sanlam Centre, Pretoria Ave",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              //print("Container clicked");
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/gps.png",
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "U Pharmacy",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    "Open",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "316 Oak, Randburg",
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget appbarWidget(Size size, BuildContext context, String groupName) {
  return Container(
    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 6),
    width: size.width,
    height: 100,
    color: Colors.pink[100],
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          groupName,
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
      ],
    ),
  );
}

Widget headerWidget(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.1,
    child: const Column(
      children: [
        Column(
          children: [
            Text(
              'Nearby Pharmacies',
              style: TextStyle(color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    ),
  );
}

Widget menubarWidget(Size size, BuildContext context) {
  return Container(
    // padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 6),
    width: size.width,
    height: 25,
    color: Colors.grey[300],
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Info Center    Health    Alert    About Us  ",
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        ),
      ],
    ),
  );
}

@override
Widget searchBar(BuildContext context) {
  return Material(
      child: SingleChildScrollView(
          child: Column(children: <Widget>[
    Container(
      margin: const EdgeInsets.all(15),
      height: 50,
      child: TextField(
        onChanged: (value) => search(value),
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(0),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.black45,
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1.0),
              borderRadius: BorderRadius.circular(50),
            ),
            hintStyle: const TextStyle(
              fontSize: 14,
            ),
            hintText: "Search..."),
      ),
    ),
  ])));
}

void search(String search) {}
