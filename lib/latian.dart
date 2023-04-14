import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_2023/HalamanProfile.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget HalamanKecil() {
      Widget BungaKecil(
        String img,
        String text,
      ) {
        return Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
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
          child: Column(children: [
            Container(
              padding: EdgeInsets.only(right: 10, top: 10),
              height: 50,
              width: 40,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style:
                        GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                  ),
                  Icon(
                    Icons.arrow_forward_sharp,
                    size: 16,
                    color: Colors.black,
                  )
                ],
              ),
            )
          ]),
        );
      }

      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          margin: const EdgeInsets.only(left: 24, bottom: 16),
          child: Text(
            "Just For You",
            style: GoogleFonts.poppins(
                color: const Color(0xff090A0A),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BungaKecil("assets/plant_white_bg.png", "plant    "),
              BungaKecil("assets/lamp_white_bg.png", "plant    "),
              BungaKecil("assets/chair_white_bg.png", "plant    "),
            ],
          ),
        )
      ]);
    }

    // widget Hot Item
    Widget ItemBesar() {
      Widget Varian(String img, String text, String harga) {
        return Container(
          margin: const EdgeInsets.only(bottom: 20, left: 22),
          child: Stack(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                width: 145,
                height: 185,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(img),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 4,
                          blurRadius: 6,
                          offset: const Offset(0, 2))
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  alignment: Alignment.bottomCenter,
                  height: 55,
                  width: 145,
                  decoration: BoxDecoration(
                      color: Colors.black54.withOpacity(0.4),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              text,
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color:
                                      const Color(0xffFFFFFF).withOpacity(0.7)),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            harga,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color:
                                    const Color(0xffFFFFFF).withOpacity(0.7)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
            width: 5,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, bottom: 10),
            child: Text('Hot Item',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 16,
                )),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Varian('assets/favorite_img_4.jpg', 'Cactus', '\$19'),
                    Varian('assets/favorite_img_1.jpg', 'Elegant Lamp', '\$25'),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Varian('assets/favorite_img_2.jpg', 'Traditional Chair', '\$42'),
               Varian('assets/favorite_img_3.jpeg', 'Wooden Chair', '\$37'),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Varian('assets/favorite_img_5.jpg', 'Plants', '\$10'),
                Varian('assets/favorite_img_6.jpg', 'Architectural', '\$28'),
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 110,
          flexibleSpace: Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30, // menyesuaikan jarak ikon dengan kolom pencarian
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 32,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 32,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 206, 196, 196)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    fillColor: Color(0xffFFFFFF),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 24,
                    ),
                    prefixIconColor: Colors.black,
                    hintText: "Apa yang kamu butuhkan?",
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: const Color.fromARGB(255, 24, 23, 23)
                          .withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 5),
                ],
              ),
              child: BottomNavigationBar(
                elevation: 0,
                unselectedItemColor: Colors.black,
                selectedItemColor: Colors.black,
                showUnselectedLabels: true,
                iconSize: 35,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: 'Profile'),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xffFFFFFF),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                height: 8,
              ),
              HalamanKecil(),
              ItemBesar(),
            ],
          ),
        ));
  }
}
