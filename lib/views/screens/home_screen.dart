import 'package:dars_43_home/views/widgets/custom_painter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double secondX = 0;
  double secondY = -90;


  @override
  void initState(){
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    void neww() async{
      while(true){
        Future.delayed(Duration(seconds: 1),(){
          print('adfhoalksdfas');
          secondX += 2;
          secondY += 1;
          setState(() {

          });
        });
      }
    }

    neww();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomPaint(
              size: Size(0,0),
              painter: MyPainter(secondX: secondX, secondY: secondY, minutX: 70, minutY: -50, hourX: 70, hourY: 0),
            )
          )
        ],
      ),
    );
  }
}
