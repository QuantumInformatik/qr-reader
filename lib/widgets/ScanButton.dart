import 'package:flutter/material.dart';

class ScanButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      child: Icon(Icons.qr_code),
      onPressed: (){},
    );
  }
}
