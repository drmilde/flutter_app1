import 'package:flutter/material.dart';
import 'package:flutter_app1/widgets/PageSelectorExample.dart';

class PageSelectorPage extends StatefulWidget {
  @override
  _PageSelectorPageState createState() => _PageSelectorPageState();
}

class _PageSelectorPageState extends State<PageSelectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PageSelectorExample()),
    );
  }
}
