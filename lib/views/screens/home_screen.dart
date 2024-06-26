import 'package:dars_43_home/views/widgets/custom_painter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double secondX = 0;
  double secondY = -95;
  bool isGo = true;


  @override
  void initState(){
    super.initState();

  }
  int count = 0;
  @override
  Widget build(BuildContext context) {
    // secondX = 6.1;
    // secondY = 89.6;
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        if(count == 60)
          count = 0;
        //
        count++;
        if(count > 0 && count <= 7){
          secondY += 3.2;
          secondX += 6.5;
        }
        else if(count > 7 && count <= 15){
          secondY += 6.5;
          secondX += 6.3;
        }
        else if(count > 15 && count <= 22){
          secondY += 6.3;
          secondX -= 3.2;
        }else if(count > 22 && count <= 30){
          secondY += 6.3;
          secondX -= 6.3;
        }else if(count > 30 && count <= 37){
          secondX -= 12;
          secondY -= 8;
        }else if(count > 37 && count <= 45){
          secondY -= 1;
          secondX -= 6.3;
        }

        if(count == 15){
          secondY = 0;
        }else if(count == 30){
          secondX = 0;
        }

        if(count == 15)
          print('stop');
        print(count);


      });
    });
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
