import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa3 extends StatefulWidget {
  const Mapa3({Key? key}) : super(key: key) ;

  @override
  _Mapa3State createState() => _Mapa3State();
}

class _Mapa3State extends State<Mapa3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('England'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(52.3555, 1.1743), zoom: 3),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.thunderforest.com/mobile-atlas/{z}/{x}/{y}.png?apikey=0c45c92d95d7489c9d58afdc12780d4b',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                    markers: [
                      Marker(
                          width: 80.0,
                          height: 80.0,
                          point: LatLng(52.3555, 1.1743),
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
