// import 'package:coinz/Modules/News/NewsDetails.dart';
// import 'package:coinz/Modules/Splash/SplashScreen.dart';
import 'package:coinz/Modules/Splash/SplashScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Modules/Main/ExchangeRates/ExchangeRatesScreen.dart';
// import 'Modules/News/NewsList.dart';
import 'Modules/Main/coinzAlarm/AlarmScreen.dart';
import 'package:get/get.dart';

import 'Modules/News/NewsList.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const SplashScreen(),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static  List<Widget> mainScreen = <Widget>[
    const ExchangeRates(),
    const AlramScreen()   ,
   NewsList(),
 //   NewsDetails()
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: mainScreen.elementAt(selectedIndex),
      ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/price_g.svg'),
              activeIcon: SvgPicture.asset('assets/images/price.svg'),
              label: 'أسعار العملات',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/Bell_grey.svg',
              ),
              activeIcon: SvgPicture.asset('assets/images/Bell.svg'),
              label: 'منبه العملات',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/menu_grey.svg',
              ),
              activeIcon: SvgPicture.asset('assets/images/Menu.svg'),
              label: 'أخبار وتقارير',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
