import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/painter/Progresspainter.dart';
import 'package:flutter_application_1/src/styles/colors/colors_views.dart';

class ProgressView extends StatefulWidget {
  const ProgressView({Key? key}) : super(key: key);

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  double load = 0.0;

  @override
  void initState() {
    super.initState();
    updateProgress();
    _changepage();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.transparent,
          width: 200,
          height: 200,
          child: CustomPaint(painter: Progresspainter(load: load)),
        ),
      ),
    );
  }

  void updateProgress() {
    Timer.periodic(const Duration(milliseconds: 15), (timer) {
      if (load == 100) {
        load = 0;
      } else {
        setState(() {
          load = load + 2;
        });
      }
    });
  }

  _changepage() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushNamed(context, 'HomeView');
  }
}
