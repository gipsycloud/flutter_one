import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class UploadPostPage extends StatefulWidget {
  @override
  _UploadPostPageState createState() => _UploadPostPageState();
}

class _UploadPostPageState extends State<UploadPostPage> {
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
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: -4,
                lightSource: LightSource.topLeft,
              ),
              child: Container(
                height: 200,
                child: Column(
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
}
