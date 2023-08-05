import 'package:flutter/material.dart';
import 'package:simple_sizer/simple_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Add the initdevsize method only here and use it through out the app
    SizeConfig.initDevSize(context);
    //
    return MaterialApp(
      title: 'Simple Sizer Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const MyText(text: 'Simple Sizer Example'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: SizedBox(
                    // Here we are giving [widget 1] 30 % of screen height
                    height: 30.h,
                    // Here we are giving [widget 1] 42 % of screen width
                    width: 42.w,
                    child: const Center(
                      child: MyText(
                        text: 'Widget 1',
                      ),
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    height: 30.h,
                    width: 42.w,
                    child: const Center(
                      child: MyText(
                        text: 'Widget 2',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 8,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 4.w, vertical: 0.5.h),
                  child: Card(
                    child: SizedBox(
                      height: 40.h,
                      width: double.infinity,
                      child:
                          Center(child: MyText(text: 'Widget ${(index + 3)}')),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'outfit',
      ),
    );
  }
}
