import 'package:flutter/material.dart';

class PlaceDetails extends StatefulWidget {
  final String? image;
  final String? description;
  final String? reviews;
  final String? name;
  const PlaceDetails({this.description, this.image, this.name, this.reviews});

  @override
  _PlaceDetailsState createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
