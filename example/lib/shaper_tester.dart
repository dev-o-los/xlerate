import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

class ShaperTester extends StatelessWidget {
  const ShaperTester({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Here we are using Shaper class to create a RoundedRectangleBorder for the first card widget
            Card(
              //roundrectbrdr = RoundedRectangleBorder()
              //curvTL20 = curve the top left corner by radius 20
              //curvBR20 = curve the bottom right corner by radius 20
              //lastly calling calling create() to render.😪
              shape: Shaper.roundrectbrdr.curvTL20.curvBR20.create(),
              //Crazzzzzzzzzzzyyyyyyyyyyyyy one liner Codddddddddddeeeeeee
              child: const Text('simple_sizer').txt.xxxl.create().p20(),
            ),
            //btw here 20.hbox = SizedBox(height: 20);
            20.hbox,

            Card(
              //stadiumbrdr = StadiumBorder()
              shape: Shaper.stadiumbrdr.create(),
              //See the Text docs to understand this.
              child: const Text('simple_sizer').txt.xxxl.create().p20(),
            ),
          ],
        ),
      ),
    );
  }
}
