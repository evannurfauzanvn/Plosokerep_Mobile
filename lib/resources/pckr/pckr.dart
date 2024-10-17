import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/cntr/brdcntr.dart';
import 'package:plosokerep_apk/resources/cntr/drgindktr.dart';
import 'package:plosokerep_apk/resources/pckr/flpckr.dart';

class Attachment extends StatefulWidget {
  const Attachment({super.key});

  @override
  State<StatefulWidget> createState() => _Attachment();
}

class _Attachment extends State<Attachment> {
  final FilePickerService _filePickerService = FilePickerService();
  final TextStyle textStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  List<PlatformFile>? _files;

  Future<void> pickFiles() async {
    List<PlatformFile>? files = await _filePickerService.pickFiles();

    if (files != null) {
      setState(() {
        _files = files;
      });
    }
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Center(child: DragIndicatorContainer()),
            ListTile(
                leading: Icon(Icons.insert_drive_file),
                title: Text('Dokumen'),
                onTap: () {
                  pickFiles();
                }),
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text('Kamera'),
              onTap: () {
                // Aksi untuk kamera
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Galeri'),
              onTap: () {
                // Aksi untuk galeri
              },
            ),
            // Tambahkan opsi lain di sini
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Lampiran",style: textStyle,),
            IconButton(
                onPressed: _showBottomSheet,
                icon: Icon(Icons.attachment_outlined)),
          ],
        ),
        BorderContainer(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(0),
          w: MediaQuery.of(context).size.width,
          h: 200,
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
        )
      ],
    );
  }
}
