import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class UploadJiraScreen extends StatefulWidget {
  const UploadJiraScreen({super.key});

  @override
  _UploadJiraScreenState createState() => _UploadJiraScreenState();
}
class _UploadJiraScreenState extends State<UploadJiraScreen> {
  File? selectedFile;

  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any, //Choose any type of files
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      setState(() {
        selectedFile = file;
      });

      //Save the file locally
      await saveFileLocally(file);
    }
  }

  Future<void> saveFileLocally(File file) async {
    final directory = await getApplicationDocumentsDirectory();
    final path = "${directory.path}/${file.uri.pathSegments.last}";
    await file.copy(path);
    print(" File saved at: $path");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Upload Jira")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          selectedFile != null
              ? Text("Selected file: ${selectedFile!.path}")
              : Text("No file selected"),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: pickFile,
            child: Text("Choose file"),
          ),
        ],
      ),
    );
  }
}
