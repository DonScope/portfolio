import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Controller/MainAppProvider.dart';
import 'package:provider/provider.dart';

class Aboutpage extends StatelessWidget {
  final Function(int) onPortfolioPressed;

  const Aboutpage({super.key, required this.onPortfolioPressed});

  @override
  Widget build(BuildContext context) {
    return Consumer<Mainappprovider>(
      builder: (context, Mainappprovider, child) {
        return Scaffold(
          backgroundColor: const Color(0XFF060F14),
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 25.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 300.w,
                      height: 300.h,
                      child: Image.asset("assets/me.jpg"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'HELLO!',
                          style: GoogleFonts.anton(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "Hi, I’m Muhammad Ashraf, a passionate mobile developer specializing in creating\nhigh-performance, cross-platform applications using Flutter. I’ve been working in\nmobile development for over three years, and in that time, I’ve developed a strong\nfocus on building smooth, responsive apps for both Android and iOS.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                          ),
                        ),
                        SizedBox(height: 25.h),
                   
                            Center(
                              child: Container(
                                color: Colors.white,
                                width: 150.w,
                                height: 50.h,
                                child: InkWell(
                                  onTap: () {
                                    onPortfolioPressed(1);
                                  },
                                  child: Center(
                                    child: Text(
                                      "MY PORTFOLIO",
                                      style: GoogleFonts.abel(
                                        color: Colors.black.withOpacity(0.7),
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                     
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "MY PROCESS",
                          style: GoogleFonts.abel(
                            color: Colors.white,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      Text(
                          "My journey into mobile development started back in university when I first\ndiscovered the world of app development. I began experimenting with various\nframeworks, but it wasn’t until I found Flutter that I felt like I had found the perfect\ntool for me. Its versatility, ease of use, and the power of the Dart language were\ngame-changers, and I quickly transitioned from small side projects to developing\nproduction-level apps.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 35.w),
                    Column(
                      children: [
                        Text(
                          "MY SOCIALS",
                          style: GoogleFonts.abel(
                            color: Colors.white,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                           
                              Container(
                                width: 150.w,
                                height: 50.h,
                                decoration: BoxDecoration( 
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(offset: Offset(3, 2))
                                ]
                                ),
                                child: InkWell(
                                onTap: () => Mainappprovider.openLink("https://github.com/DonScope"),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Image.asset("assets/github.png"),
                                        SizedBox(width: 15.w),
                                        Text(
                                          "GITHUB",
                                          style: GoogleFonts.abel(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                     SizedBox(height: 15.h),
                         Container(
                                width: 150.w,
                                height: 50.h,
                                decoration: BoxDecoration( 
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(offset: Offset(3, 2))
                                ]
                                ),
                                child: InkWell(
                                onTap: () => Mainappprovider.openLink("https://discord.gg/hGzdJchxYu"),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Image.asset("assets/discord.png"),
                                        SizedBox(width: 15.w),
                                        Text(
                                          "DISCORD",
                                          style: GoogleFonts.abel(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
