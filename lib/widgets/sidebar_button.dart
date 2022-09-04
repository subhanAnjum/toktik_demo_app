import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SidebarButton extends StatelessWidget {
  const SidebarButton({
    Key? key, required this.icon, required this.text
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          //const SizedBox(height: 10.0,),
          Icon(icon,size: 38,),
          Text(text)
        ],
      ),
    );
  }
}