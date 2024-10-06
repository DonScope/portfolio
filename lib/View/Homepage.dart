import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Controller/MainAppProvider.dart';
import 'package:portfolio/View/Aboutpage.dart';
import 'package:portfolio/View/Portifoliopage.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  @override
  Widget build(BuildContext context) {
 
    List<Widget> screens = [
      Aboutpage(),
       Portifoliopage(),
    ];

    return SafeArea(
      child: Consumer<Mainappprovider>(
        builder: (context, Mainappprovider, child) {

          return Scaffold(
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
                   backgroundColor: Mainappprovider.index == 0 ? Colors.grey[850] : Colors.transparent,
                foregroundColor: Mainappprovider.index == 0 ? Colors.blue : Colors.white,
                  ),
                  onPressed: () {
                 Mainappprovider.updateIndex(newIndex: 0);
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
                TextButton(onPressed: () {
                  print(Mainappprovider.index);
                }, child: Text("get index")),
                TextButton(
                  style: TextButton.styleFrom(
                  backgroundColor: Mainappprovider.index == 1 ? Colors.grey[850] : Colors.transparent,
                 foregroundColor: Mainappprovider.index == 1 ? Colors.blue : Colors.white,
                  ),
                  onPressed: () {
                   Mainappprovider.updateIndex(newIndex: 1);
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
          body: screens[Mainappprovider.index], 
        );
        },
 
      ),
    );
  }
}
