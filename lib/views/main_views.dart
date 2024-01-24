import 'package:flutter/material.dart';
import 'package:test_flutter_3/models/form_label_model.dart';
import 'package:test_flutter_3/views/components/form_body.dart';

// ignore: camel_case_types
class MainViews extends StatelessWidget {
  const MainViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          labelAppBar,
          style: TextStyle(color: Colors.white),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: const FormBody(),
    );
  }
}
