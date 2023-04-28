// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:kfupm_events/src/features/create/presentation/create_bar.dart';
import 'package:kfupm_events/src/features/create/presentation/create_form.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({
    Key? key,
    
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          const CreateBar(),
          CreateForm(screenHeight: screenHeight),
        ],
      ),
    );
  }
}
