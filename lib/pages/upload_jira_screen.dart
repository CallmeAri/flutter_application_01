import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class UploadJiraScreen extends StatefulWidget {
  @override
  _UploadJiraScreenState createState() => _UploadJiraScreenState();
}
class _UploadJiraScreenState extends State<UploadJiraScreen> {
  File? selectedFile;

  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any, // انتخاب همه نوع فایل‌ها
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      setState(() {
        selectedFile = file;
      });

      // ذخیره فایل در حافظه محلی
      await saveFileLocally(file);
    }
  }

  Future<void> saveFileLocally(File file) async {
    final directory = await getApplicationDocumentsDirectory();
    final path = "${directory.path}/${file.uri.pathSegments.last}";
    await file.copy(path);
    print("📂 File saved at: $path");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("آپلود فایل JIRA")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          selectedFile != null
              ? Text("📄 فایل انتخاب شده: ${selectedFile!.path}")
              : Text("هیچ فایلی انتخاب نشده"),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: pickFile,
            child: Text("انتخاب فایل"),
          ),
        ],
      ),
    );
  }
}
