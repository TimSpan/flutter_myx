import 'dart:ui';
import 'package:flutter/material.dart';

class HiBlur extends StatefulWidget {
  final Widget child;
  final double sigma;

  const HiBlur({super.key, this.sigma = 10,  required this.child});

  @override
  State<HiBlur> createState() => _HiBlurState();
}

class _HiBlurState extends State<HiBlur> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: widget.sigma, sigmaY: widget.sigma),
      child: Container(
        color: Colors.white10,
        child: widget.child,
      ),
    );
  }
}
