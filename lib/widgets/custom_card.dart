import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom_card extends StatelessWidget {
  const custom_card({
    super.key,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.title,
    required this.subtitle,
    required this.onPressed,
    this.buttom = 0,
  });

  final IconData leadingIcon;
  final IconData trailingIcon;
  final String title;
  final String subtitle;
  final void Function() onPressed;
  final double buttom;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      //margin: const EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(
        right: 20,
        left: 20,
        bottom: buttom,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      child: ListTile(
        minLeadingWidth: 0,
        leading: Icon(leadingIcon),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: IconButton(
          onPressed: onPressed,
          icon: Icon(trailingIcon),
        ),
      ),
    );
  }
}
