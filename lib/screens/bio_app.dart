import 'package:flutter/material.dart';

import '../widgets/custom_card.dart';

class BioApp extends StatelessWidget {
  const BioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'BIO',
          style: TextStyle(
              color: Colors.black38, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.cyan.shade300, Colors.yellow.shade100],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            const CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/6681/6681204.png"),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Areej Al_Maqadma CS_Student',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text('Alaqsa_University',
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold)),
            const Divider(
              color: Colors.black38,
              indent: 70,
              endIndent: 70,
              height: 50,
            ),
            custom_card(
              leadingIcon: Icons.phone_android,
              trailingIcon: Icons.phone,
              title: 'mobile',
              subtitle: '05336598563',
              onPressed: () {
                _showMessage(context, massage: 'call now');
                print('areej');
              },
              buttom: 10,
            ),
            custom_card(
              leadingIcon: Icons.email_outlined,
              trailingIcon: Icons.send,
              title: 'email',
              subtitle: 'areej@gmail.com',
              onPressed: () {
                _showMessage(context, massage: 'send email');
                print('email');
              },
              buttom: 10,
            ),
            custom_card(
                leadingIcon: Icons.location_history_rounded,
                trailingIcon: Icons.map_outlined,
                title: 'location',
                subtitle: 'GAZA',
                onPressed: () {
                  _showMessage(context, massage: 'open map');
                  print('location');
                }),
            const Spacer(),
            const Text('tech_box 2023'),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  void _showMessage(BuildContext context, {required String massage}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(massage),
      backgroundColor: Colors.green,
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      duration: Duration(milliseconds: 3000),
    ));
  }
}
