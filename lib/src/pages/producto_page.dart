import 'package:flutter/material.dart';

class ProductoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
        centerTitle: true,
        actions: [
          IconButton( 
            icon: Icon( Icons.photo_size_select_actual_outlined ),
            onPressed: (){},
          ),
          IconButton( 
            icon: Icon( Icons.camera_alt_outlined ),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}