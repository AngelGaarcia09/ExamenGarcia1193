import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class RegistroDeTroca {
  final String codigoTroca;
  final String modelo;
  final String marca;
  final String tipoLlantas;
  final double precio;
  final String color;

  RegistroDeTroca({
    required this.codigoTroca,
    required this.modelo,
    required this.marca,
    required this.tipoLlantas,
    required this.precio,
    required this.color,
  });
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> troca = [
    {
      'CodigoTroca': '001',
      'Modelo': 'F-150',
      'Marca': 'Ford',
      'TipoLlantas': 'All-Terrain',
      'Precio': 35000.0,
      'Color': 'Rojo',
    },
    {
      'CodigoTroca': '002',
      'Modelo': 'Silverado',
      'Marca': 'Chevrolet',
      'TipoLlantas': 'Highway',
      'Precio': 40000.0,
      'Color': 'Azul',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Quita la barra de debug de la esquina derecha
      home: Scaffold(
        appBar: AppBar(
          title: Text('     Registro Troca Garcia:1193'), // Título de la AppBar
          backgroundColor: Color(0x8439e85f), // Color de fondo de la AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: troca.map((data) {
              // Asigna colores diferentes a cada contenedor
              final containerColor = data['CodigoTroca'] == '001'
                  ? Color(0xff1ad9d9)
                  : Color(0xff1886ec);

              return Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: containerColor, // Color diferente para cada contenedor
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 9),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text('Código: ${data['CodigoTroca']}',
                        style: TextStyle(fontSize: 18)),
                    Text('Modelo: ${data['Modelo']}',
                        style: TextStyle(fontSize: 18)),
                    Text('Marca: ${data['Marca']}',
                        style: TextStyle(fontSize: 18)),
                    Text('Tipo de Llantas: ${data['TipoLlantas']}',
                        style: TextStyle(fontSize: 18)),
                    Text('Precio: \$${data['Precio']}',
                        style: TextStyle(fontSize: 18)),
                    Text('Color: ${data['Color']}',
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
