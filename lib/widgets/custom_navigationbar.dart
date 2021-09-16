import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex=uiProvider.selectedMenuOpt;
    print("Devuelve el index actual: $currentIndex");
    return BottomNavigationBar(
      onTap: (int i)=>uiProvider.selectedMenuOpt = i,
      currentIndex:currentIndex,
      elevation: 5.0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Mapa'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.compass_calibration),
            label: 'Direcciones'
        )
      ],
    );
  }
}
