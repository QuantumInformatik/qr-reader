import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/DireccionesPage.dart';
import 'package:qr_reader/pages/MapasHistorial.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import 'package:qr_reader/widgets/ScanButton.dart';
import 'package:qr_reader/widgets/custom_navigationbar.dart';


class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarHome(),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  
  
  
  

  Widget _appBarHome(){
    return AppBar(
      elevation: 0,
      title: Text('Historial'),
      actions: [
        IconButton(icon: Icon(Icons.delete_forever), onPressed: (){})
      ],
    );
  }



}

class _HomePageBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    //obtener el selectd menu opt
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex=uiProvider.selectedMenuOpt;

    switch(currentIndex){
      case 0:
        return MapasHistorial();
      case 1:
        return DireccionesPage();
      default:
        return MapasHistorial();
    }

  }


}

