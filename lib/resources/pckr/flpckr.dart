import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class PickFile extends StatefulWidget {
  const PickFile({super.key});

  @override
  State<StatefulWidget> createState() => _PickFile();
}

class _PickFile extends State<PickFile> {
  List<PlatformFile>? _files;
  Future<void> _pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true, // Mengizinkan pemilihan banyak file
      type: FileType.custom, // Memilih tipe file tertentu
      allowedExtensions: ['jpg', 'pdf', 'docx'], // Ekstensi yang diizinkan
    );

    if (result != null) {
      setState(() {
        _files = result.files;
      });
    } else {
      // Pengguna membatalkan pemilihan
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          IconButton(
              onPressed: _pickFiles, icon: Icon(Icons.insert_drive_file_rounded)),
          Expanded(
            child: _files != null
                ? ListView.builder(
                    itemCount: _files!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_files![index].name),
                        subtitle: Text('${_files![index].size} bytes'),
                      );
                    },
                  )
                : Text('Tidak ada file yang dipilih'),
          ),
        ],
      ),
    );
  }
}
