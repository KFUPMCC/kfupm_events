import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

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
                Icon(Icons.contact_support_outlined, size: 25),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Contact Us',
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
