import 'package:flutter/material.dart';

import '../../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState(){
  super.initState();
  _navigatetohome();
}
_navigatetohome() async{
  await Future.delayed(const Duration(milliseconds: 1500),(){});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const MyHomePage()));

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Column(children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFFFFDB00), Color(0xFFFFA700)])),
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.width * 0.55,

                // color: Colors.indigo,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFFFB79B4), Color(0xFF9B81EC)])),
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.width * 0.55,
              ),
            ),
          ],
        ),
        Stack(children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFF58C4D8), Color(0xFF478EDA)])),
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width * 0.55,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFF41E450), Color(0xFF02DFB6)])),
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width * 0.55,
                ),
              ),
            ],
          ),
           const Align(
         alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(top :35),
                  child: Image(image: AssetImage('assets/images/calender.png')),
                )),

        ]),
      ]),
      Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'بلوك \n تشين',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      )
    ]));
  }
}
