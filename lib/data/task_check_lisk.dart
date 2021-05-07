import 'package:flutter/material.dart';
import 'package:task_management_mobile/model/tag.dart';
import 'package:task_management_mobile/model/task.dart';

Tag branding = Tag.watermark(
  tagName: 'Branding',
  bColor: Color(0xffD9F8FC),
  tColor: Color(0xff05C3EB),
);
Tag uiux = Tag.watermark(
  tagName: 'UI/UX',
  bColor: Color(0xffFFFBE7),
  tColor: Color(0xffFED430),
);
Tag digital = Tag.watermark(
  tagName: 'Digital',
  bColor: Color(0xffE9E4F9),
  tColor: Color(0xff702DE3),
);
Tag strategist = Tag.watermark(
    tagName: 'Strategist',
    bColor: Color(0xffF8E1E4),
    tColor: Color(0xffFF0000));
    
var tasks = [
  Task.taskChecklist(
    taskName: 'UX Research',
    tag: branding,
  ),
  Task.taskChecklist(
    taskName: 'Awareness Research',
    tag: uiux,
  ),
  Task.taskChecklist(
    taskName: 'Create New UI - Pertamina',
    tag: uiux,
  ),
  Task.taskChecklist(
    taskName: 'Moodboard Audience',
    tag: digital,
  ),
  Task.taskChecklist(
    taskName: 'Audience Moodboard',
    tag: strategist,
  ),
  Task.taskChecklist(
    taskName: 'Color Pallete',
    tag: digital,
  ),
  Task.taskChecklist(
    taskName: 'Tipography Study',
    tag: strategist,
  ),
  Task.taskChecklist(
    taskName: 'Sketch basic Logo',
    tag: branding,
  ),
  Task.taskChecklist(
    taskName: 'Purchase Mockup',
    tag: digital,
  ),
];
