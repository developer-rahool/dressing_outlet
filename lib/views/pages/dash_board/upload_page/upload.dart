import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Upload",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 24),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
    );
  }
}
