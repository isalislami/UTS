import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KataSandiPage extends StatelessWidget {
  const KataSandiPage({super.key});

  Widget musicPopular() {
    Widget musicCard(
      String img,
    ) {
      SingleChildScrollView;
      return Container(
        width: 160,
        margin: const EdgeInsets.only(
          right: 16,
          top: 340,
        ),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 142,
                      width: 142,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          image: DecorationImage(image: AssetImage(img))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 142,
                      width: 142,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          image: DecorationImage(image: AssetImage(img))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 142,
                      width: 142,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          image: DecorationImage(image: AssetImage(img))),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 200,
                width: 9,
              ),
              musicCard("assets/favorite_img_1.jpg"),
              musicCard("assets/favorite_img_1.jpg",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget IconMenu() {
    Widget IconKeranjang(String img) {
      return Container(
        margin: const EdgeInsets.only(top: 12),
        child: Column(
          children: [
            Container(
              height: 88,
              width: 88,
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage(img))),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      );
    }

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconKeranjang(
                "assets/pngwing 1.png",
              ),
              SizedBox(
                width: 180,
              ),
              IconKeranjang(
                "assets/Keranjang.png",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget musicHeader() {
    Widget musicCard(String img, String text) {
      return Container(
        padding: EdgeInsets.only(top: 20, right: 40),
        margin: EdgeInsets.only(right: 16, bottom: 10, top: 190),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        width: 120,
        height: 100,
        child: Column(
          children: [
            Container(
              height: 34,
              width: 39,
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage(img))),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              text,
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      );
    }

    Widget IconHome() {
      Widget IconAtas(String img,) {
        return Container(
          margin: const EdgeInsets.only(top: 12),
          child: Column(
            children: [
              Container(
                height: 88,
                width: 88,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        );
      }

      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconAtas(
                  "assets/pngwing 1.png",
                ),
                SizedBox(
                  width: 180,
                ),
                IconAtas(
                  "assets/Keranjang.png",
                ),
              ],
            ),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(
            width: 12,
          ),
          musicCard("assets/plant_white_bg.png", "Plants"),
          musicCard("assets/lamp_white_bg.png", "Lamps"),
          musicCard("assets/chair_white_bg.png", "Chair"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(children: [
      Container(
        decoration: BoxDecoration(color: Color(0xffF5F5F5)),
      ),
      Container(
        color: const Color(0xff129273),
        height: 150,
        width: double.infinity,
      ),
      Container(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          padding: EdgeInsets.symmetric(vertical: 85),
          child: Column(
            children: [
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 206, 196, 196)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 24,
                      ),
                      prefixIconColor: Colors.black,
                      hintText: "Apa yang kamu butuhkan?")),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(right: 250, bottom: 16),
                child: Text(
                  "Category",
                  style: GoogleFonts.poppins(
                      color: const Color(0xff090A0A),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 250, top: 110),
                child: Text(
                  "Hot item",
                  style: GoogleFonts.poppins(
                      color: const Color(0xff090A0A),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
      IconMenu(),
      musicPopular(),
      musicHeader()
    ])));
  }
}
