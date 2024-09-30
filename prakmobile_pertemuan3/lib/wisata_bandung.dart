import 'package:flutter/material.dart';
import 'package:prakmobile_pertemuan3/dummy_data.dart';

class WisataBandung extends StatelessWidget {
  const WisataBandung ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('List Wisata Bandung'),),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
      itemCount: tourismPlaceList.length,
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return Card(
          child: Column(
            children: [
            Image.network(place.imageUrls[0]),
            Text(place.name),
            Text (place.location)
            ],
          ),
        );

      }
      ),
    );
  }
}
