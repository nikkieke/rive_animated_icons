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
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Wrap(
              alignment: WrapAlignment.start,
              children: RiveIcon.values
                  .map((RiveIcon e) => Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            RiveAnimatedIcon(
                              riveIcon: e,
                              width: 50,
                              height: 50,
                              loopAnimation: false,
                              onTap: () {
                                debugPrint('tapped');
                              },
                              onHover: (value) {
                                debugPrint('value is $value');
                              },
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ))
                  .toList()),
        ),
      )),
    );
  }
}
