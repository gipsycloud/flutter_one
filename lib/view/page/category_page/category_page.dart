import "package:flutter_neumorphic/flutter_neumorphic.dart";
import 'package:help/view/widget/post_widget.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: NeumorphicAppBar(title: Text("Laravel")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          PostWidget(),
          PostWidget(),
          PostWidget(),
          PostWidget(),
          PostWidget()
        ],
      ),
    );
  }
}
