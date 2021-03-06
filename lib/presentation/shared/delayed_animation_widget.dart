import 'package:flutter/material.dart';

class DelayedAnimation extends StatefulWidget {
  final Widget child;
  final int delay;
  final Offset offset;

  DelayedAnimation({
    @required this.child,
    this.delay,
    this.offset,
  });

  @override
  _DelayedAnimationState createState() => _DelayedAnimationState();
}

class _DelayedAnimationState extends State<DelayedAnimation>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _animOffset;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.delay),
    );
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: _controller);
    _animOffset = Tween<Offset>(
            begin: widget.offset != null ? widget.offset : Offset(0, 0.35),
            end: Offset.zero)
        .animate(curve);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
      opacity: _controller,
    );
  }
}
