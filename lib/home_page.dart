import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:timeline_widget/component/my_timeline_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: ListView(
          children: const [
            TimeLineTile(
                isFirst: true,
                isLast: false,
                isPast: true,
                eventCard: Text("ORDER PLACED", style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
            ),
            TimeLineTile(
              isFirst: false,
              isLast: false,
              isPast: true,
              eventCard: Text("ORDER CONFIRMED", style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
            ),
            TimeLineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text("ORDER SHIPPED", style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
            ),
            TimeLineTile(
                isFirst: false,
                isLast: true,
                isPast: false,
                eventCard: Text("ORDER DELIVERED", style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
