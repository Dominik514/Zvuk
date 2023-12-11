import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:androis_studio_projects/notice.dart';

class QrScan extends StatefulWidget {
  const QrScan({super.key, required this.title});
  final String title;
  // This widget is the root of your application.
    @override
    State<QrScan> createState() => _QrState();
}

class _QrState extends State<QrScan> {
 bool isScaned = false;
 String code = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,

        title: Text(widget.title),
      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

         children: [
           const Text(
              'You have pushed the button this many times:',
           ),

           Text(
              'a',
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium,
           ),

           Expanded(
             child: MobileScanner(
                 onDetect: (barcode)
                 {
                   if (isScaned ==false)
                   {
                     code = barcode.raw;
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const Notice()));
                   }


                 },
             )
           ),

         ],
          


        ),

      ),

    );
  }
}