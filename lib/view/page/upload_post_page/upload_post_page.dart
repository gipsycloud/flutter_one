import 'dart:io';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:image_picker/image_picker.dart';

class UploadPostPage extends StatefulWidget {
  @override
  _UploadPostPageState createState() => _UploadPostPageState();
}

class _UploadPostPageState extends State<UploadPostPage> {
  File _image;
  final picker = ImagePicker();

  var selectedCategoryId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: NeumorphicAppBar(
        title: Text("New Post"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            NeumorphicButton(
              onPressed: () {
                pickImage();
              },
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: -4,
                lightSource: LightSource.topLeft,
              ),
              child: Container(
                height: 200,
                child: _image != null
                    ? Image.file(
                        _image,
                        fit: BoxFit.cover,
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.photo),
                          Text(
                            "Upload\nPhoto",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: -4,
                lightSource: LightSource.topLeft,
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Title",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: -4,
                lightSource: LightSource.topLeft,
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Description",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 20, top: 10)),
                maxLines: 4,
                minLines: 4,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: -4,
                lightSource: LightSource.topLeft,
              ),
              child: DropdownButtonFormField<int>(
                onChanged: (i) {}, // i = id
                items: [DropdownMenuItem(child: Text("Laravel"), value: 1)],
                decoration: InputDecoration(
                    hintText: "Select Category",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            NeumorphicButton(
              onPressed: () {},
              child: Center(
                child: Text(
                  "Upload",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 8,
                // lightSource: LightSource.topLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future pickImage() async {
    final pickedFile =
        await picker.getImage(source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
}
