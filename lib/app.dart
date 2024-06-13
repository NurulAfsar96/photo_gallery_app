import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_gallery_screen.dart';

class PhotoGalleryApp extends StatelessWidget {
  const PhotoGalleryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Photo Gallery",
      home: PhotoScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
