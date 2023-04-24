// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: TextField(
        // Optional, but may be useful to show the number keyboard
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(
              Icons.filter_list,
              color: Colors.grey[800],
            ),
            onPressed: () {},
          ),
          prefixIcon: IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.grey[800],
            ),
            onPressed: () {},
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search',
          focusedBorder: null,
          focusColor: null,
          hintStyle: TextStyle(
            color: Colors.grey[800],
            fontSize: 15,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
