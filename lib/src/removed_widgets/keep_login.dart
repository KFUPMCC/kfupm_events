import 'package:flutter/material.dart';

class KeepLogin extends StatefulWidget {
  const KeepLogin({super.key});

  @override
  State<KeepLogin> createState() => _KeepLoginState();
}

class _KeepLoginState extends State<KeepLogin> {
  bool keepLogin = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 0),
          child: Checkbox(
            value: keepLogin,
            onChanged: (bool? value) {
              if (value != null) {
                setState(() {
                  keepLogin = value;
                });
              }
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 0),
          child: Text(
            'Keep me logged in',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
