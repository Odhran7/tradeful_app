import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:tradeful_app/utils/colors.dart';
import 'package:tradeful_app/widgets/big_text.dart';

class AlternatingTextWidget extends StatefulWidget {
  Color? color;
  final List<String> textList;
  final int seconds;

  AlternatingTextWidget({
    super.key,
    this.color = const Color(0xfffefffb),
    required this.textList,
    required this.seconds,
  });

  @override
  State<AlternatingTextWidget> createState() => _AlternatingTextWidgetState();
}

class _AlternatingTextWidgetState extends State<AlternatingTextWidget> {
  int _index = 0;
  late Timer _timer;

  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  // Starts the timer for the 2 second transition

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: widget.seconds), (_) {
      setState(() {
        _index = (_index + 1) % widget.textList.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: const Duration(seconds: 2),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(
            child: child,
            opacity: animation,
          );
        },
        child: BigText(
          text: widget.textList[_index],
          color: AppColors.mainColor,
          size: 15,
        ));
  }
}
