import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NestedListViewAndColumn extends StatefulWidget {
  const NestedListViewAndColumn({super.key});

  @override
  State<NestedListViewAndColumn> createState() =>
      _NestedListViewAndColumnState();
}

class _NestedListViewAndColumnState extends State<NestedListViewAndColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Inside Column'),
        centerTitle: true,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 150,
              child: Center(
                  child: Text(
                'Some Widget',
                style: TextStyle(color: Colors.white, fontSize: 25),
              )),
            ),
            ListView.builder(
              primary: false,  // scrolling disabled
              shrinkWrap: true,
              itemCount: 30,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${index + 1}'),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
