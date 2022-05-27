import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    Key? key,
    required this.id,
  }) : super(key: key);
  final int id;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  File? file;

  _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      // file = File(result.files.single.path!);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (file != null)
              Text(
                file!.path,
              ),
            ElevatedButton(
              onPressed: () {
                _pickFile();
              },
              child: const Text(
                'Upload file',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
