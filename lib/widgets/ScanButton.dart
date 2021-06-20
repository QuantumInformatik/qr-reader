import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      child: Icon(Icons.qr_code),
      onPressed: ()async{
        String barcodeScanRes = "https://google.com";//await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', false, ScanMode.BARCODE);

        print(barcodeScanRes);
      },
    );
  }
}
