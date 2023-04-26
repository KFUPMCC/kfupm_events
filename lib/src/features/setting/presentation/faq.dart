import 'package:flutter/material.dart';

class FAQ extends StatelessWidget {
  const FAQ({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(Icons.format_quote_outlined, size: 25),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'FAQs',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                )
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey[800],
            ),
          ],
        ),
      ),
    );
  }
}
