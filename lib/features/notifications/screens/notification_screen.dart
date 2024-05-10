import 'package:flutter/material.dart';
import 'package:niet_placements/comman/widgets/appbar/appbar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: SAppBar(
       title: Text("Notifications",
         style: Theme.of(context).textTheme.headlineMedium!.apply(
           color: dark ? Colors.white : Colors.black,
         ),
       ) ,

      ),
      body: Center(
        child: Text("No Notifications"),
      ),

    );
  }
}