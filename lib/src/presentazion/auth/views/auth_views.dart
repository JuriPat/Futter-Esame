import 'package:flutter/material.dart';
import 'package:flutteresame/src/presentazion/auth/widgets/social_button.dart';

class AuthConnector extends StatelessWidget {
  const AuthConnector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: ColoredBox(
              color: Colors.greenAccent.withOpacity(0.2),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Logo'),
                    Text('Description'),
                    SizedBox.shrink()
                  ],
                ),
              ),
            ),
          ),

          ///form
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  Column(
                    children: const [
                      Text('Get Started'),
                      SocialButton(),
                    ],
                  ),
                  Column(
                    children: const [
                      Text('IED Exam'),
                      Text('Pravasy Policy'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
