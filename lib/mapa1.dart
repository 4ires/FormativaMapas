import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa1 extends StatefulWidget {
  const Mapa1({Key? key}) : super(key: key) ;

  @override
  _Mapa1State createState() => _Mapa1State();
}

class _Mapa1State extends State<Mapa1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Brazil'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue.shade900,
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(-14.235, -51.9253), zoom: 3),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.thunderforest.com/neighbourhood/{z}/{x}/{y}.png?apikey=0c45c92d95d7489c9d58afdc12780d4b',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                    markers: [
                      Marker(
                          width: 80.0,
                          height: 80.0,
                          point: LatLng(-14.235, -51.9253),
                          builder: (ctx) => Container(
                            child: Icon(Icons.location_on, color: Colors.red,),
                          )
                      )
                    ]
                )
              ],
            )
          ],
        )
    );
  }
}
