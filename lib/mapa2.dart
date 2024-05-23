import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa2 extends StatefulWidget {
  const Mapa2({Key? key}) : super(key: key) ;

  @override
  _Mapa2State createState() => _Mapa2State();
}

class _Mapa2State extends State<Mapa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Italy'),
          centerTitle: true,
          backgroundColor: Colors.lightGreen.shade900,
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(41.173286, 2.342500), zoom: 3),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.thunderforest.com/transport/{z}/{x}/{y}.png?apikey=0c45c92d95d7489c9d58afdc12780d4b',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                    markers: [
                      Marker(
                          width: 80.0,
                          height: 80.0,
                          point: LatLng(41.173286, 2.342500),
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
