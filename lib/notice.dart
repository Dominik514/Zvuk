import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Notice extends StatefulWidget {
  const Notice({super.key,});

  // This widget is the root of your application.
  @override
  State<Notice> createState() => _Notice();
}

class  _Notice extends State<Notice> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,


      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [


            Text(
              'Sken proběhl úspěšně',
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium,
            ),

          ],

        ),

      ),

    );
  }
}