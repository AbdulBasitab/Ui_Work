import 'package:flutter/material.dart';
import 'package:ui/main.dart';

class Task {
  final String title;
  final String subText;
  final IconData tag;
  final String tagText;
  final IconData? notifiicon1;
  final String notifiText1;
  final IconData? notifiicon2;
  final String notifiText2;

  const Task({
    required this.title,
    required this.subText,
    required this.tag,
    required this.tagText,
    this.notifiicon1,
    required this.notifiText1,
    this.notifiicon2,
    required this.notifiText2,
  });

  static List<Task> taskList = [
    const Task(
        title: 'Design signup flow',
        subText:
            'By the Time a prospect arrives at your signup page, in most cases theyve already evaluat...',
        tag: Icons.color_lens,
        tagText: 'Design',
        notifiicon1: Icons.attachment_rounded,
        notifiText1: '1',
        notifiicon2: Icons.message_rounded,
        notifiText2: '3'),
    const Task(
        title: 'Landing Page content',
        subText:
            'Writing the content of the new landing page and prepare the assets for the different sections...',
        tag: Icons.money_off_rounded,
        tagText: 'Marketing',
        notifiicon1: null,
        notifiText1: '',
        notifiicon2: null,
        notifiText2: ''),
    const Task(
      title: 'Design usecase page',
      subText: '',
      tag: Icons.color_lens_rounded,
      tagText: 'Design',
      notifiicon1: Icons.message_rounded,
      notifiText1: '1',
      notifiicon2: null,
      notifiText2: '',
    ),
    const Task(
      title: 'Define new tools for metric',
      subText: '',
      tag: Icons.color_lens_rounded,
      tagText: 'Tool',
      notifiicon1: Icons.pan_tool_sharp,
      notifiText1: '1',
      notifiicon2: null,
      notifiText2: '',
    ),
  ];
}
