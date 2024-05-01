import 'package:flutter/material.dart';
import 'package:rive_animated_icon/rive_animated_icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rive Animated Icons',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Wrap(
              alignment: WrapAlignment.start,
              children: RiveIcons.values.map(
                      (RiveIcons e) => Padding(
                          padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            RiveAnimatedIcon(
                              riveIcons: e,
                              width: 50,
                              height: 50,
                              loopAnimation: true,
                              onTap: (){},
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      )
              ).toList()
            ),
          ),
        )
      ),
    );
  }
}
