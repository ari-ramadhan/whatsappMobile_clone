import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff111b21),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Image.asset('assets/images/circle.png',
                    color: Color(0xff00a884)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Welcome to Whatsapp',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(color: Color(0xff8696A0), height: 1.5),
                        text: 'Read our ',
                        children: [
                          TextSpan(
                            text: 'Privacy Policy. ',
                            style: TextStyle(
                              color: Color(0xff53bde8),
                            ),
                          ),
                          TextSpan(
                            text: 'Tap "Agree and continue" to accept the ',
                          ),
                          TextSpan(
                            text: 'Terms of Services.',
                            style: TextStyle(
                              color: Color(0xff53bde8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width - 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Color(0xFF111B21),
                          backgroundColor: Color(0xFF00a884),
                          splashFactory: NoSplash.splashFactory,
                          elevation: 0,
                          shadowColor: Colors.transparent),
                      onPressed: () {},
                      child: const Text('AGREE AND CONTINUE'),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Material(
                    color: const Color(0xff182229),
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(20),
                      splashFactory: NoSplash.splashFactory,
                      highlightColor: const Color(0xff09141a),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.language,
                            color: Color(0xff00a884),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('English'),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xff00a884),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
