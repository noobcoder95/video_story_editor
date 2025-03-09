
import 'package:flutter/material.dart';
import 'package:video_story_editor/src/controller/controller.dart';

import 'text_top_view.dart';
class TextControlView extends StatelessWidget {
  final VideoStoryEditorController controller;
  final VoidCallback? onAlignChangeClickListener;
  final IconData? icon;
  const TextControlView({super.key, required this.controller, this.onAlignChangeClickListener, this.icon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: TextTopView(
            icon: icon,
            onAlignChangeClickListener: onAlignChangeClickListener,
            controller: controller,
          ),
        ),
      ],
    );
  }
}
