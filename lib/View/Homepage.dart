import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/View/Aboutpage.dart';
import 'package:portfolio/View/Portifoliopage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 0; 

  void updateIndex(int newIndex) {
    setState(() {
      index = newIndex; 
    });
  }

  @override
  Widget build(BuildContext context) {
 
    List<Widget> screens = [
      Aboutpage(onPortfolioPressed: updateIndex), 
      const Portifoliopage(),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFF060F14),
          title: Row(
            children: [
              SizedBox(width: 30.w),
              Text(
                "DS Global",
                style: GoogleFonts.anton(
                  fontSize: 20.sp,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              const Spacer(),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: index == 0 ? Colors.grey[850] : Colors.transparent,
                  foregroundColor: index == 0 ? Colors.blue : Colors.white,
                ),
                onPressed: () {
                  updateIndex(0); 
                },
                child: Text(
                  "ABOUT",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                " . ",
                style: TextStyle(color: Colors.grey, fontSize: 25.sp),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: index == 1 ? Colors.grey[850] : Colors.transparent,
                  foregroundColor: index == 1 ? Colors.blue : Colors.white,
                ),
                onPressed: () {
                  updateIndex(1); 
                },
                child: Text(
                  "PORTFOLIO",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: screens[index], 
      ),
    );
  }
}
