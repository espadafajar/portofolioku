import 'package:flutter/material.dart';
class TranslateOnHover extends StatefulWidget {

  final Widget child;
  TranslateOnHover({this.child});
  @override
  _TranslateOnHoverState createState() => _TranslateOnHoverState();
}

class _TranslateOnHoverState extends State<TranslateOnHover> {

  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..translate(0,-10,0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _mouseEnter(true),
      onExit: (event) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        child: widget.child,
        transform: _hovering ? hoverTransform: nonHoverTransform,
      ),
    );
  }

  void _mouseEnter(bool hovering){
    setState(() {
      _hovering = hovering;
    });
  }

}

