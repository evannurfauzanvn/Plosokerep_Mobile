import 'package:file_picker/file_picker.dart';

class FilePickerService {
  Future<List<PlatformFile>?> pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'docx'],
    );

    if (result != null) {
      return result.files;
    } else {
      return null;
    }
  }
}