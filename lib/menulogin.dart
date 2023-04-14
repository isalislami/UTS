import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_2023/HalamanPage.dart';
import 'package:uts_2023/latian.dart';
import 'package:uts_2023/main.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget loginPage() {
      return SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: 352,
                height: 321,
                margin: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffFFFFFFF),
                ),
                child: Column(children: [
                  Center(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Login First",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                color: const Color(0xff000000)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 20,
                          color: Colors.black,
                        ),
                        hintText: "Username",
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 20,
                          color: Colors.black,
                        ),
                        hintText: "Password",
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(height: 5,),
                  Center(
                      child: Container(
                        margin: EdgeInsets.only(left: 100),
                    child: Text(
                      "Belum Punya Akun?",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                          color: Colors.green),
                    ),
                  )),
                ])),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF5F5F5),
      body: Stack(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            color: Colors.green,
            height: 310,
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
              child: SafeArea(
                  child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SafeArea(
                  child: Row(
                    children: [
                      SafeArea(
                        child: Column(
                          children: [
                            Container(
                              width: 50,
                              height: 65,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/Logo.png"))),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Sahabat",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 32,
                                      color: const Color(0xffFFFFFF)),
                                ),
                                Text(
                                  "Furniture Kamu",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                      color: const Color(0xffFFFFFF)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            loginPage(),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainPage()));
              },
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 120
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 14),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(17)),
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
            ),
          ]
          )))
        ],
      ),
    );
  }
}
