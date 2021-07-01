import 'package:flutter/material.dart';

class ControlYourHome extends StatelessWidget {
  const ControlYourHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: ColoredBox(
              color: Colors.orange,
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Control your home',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                      'Control all your smart home devices and enjoy your life'),
                  SizedBox(
                    height: 14.0,
                  ),
                  GetStartedButton(
                    label: 'Get started',
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Text('Sign in'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GetStartedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  GetStartedButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
