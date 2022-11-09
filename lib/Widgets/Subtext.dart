import 'package:flutter/material.dart';
import 'package:ui/Models/model.dart';

Padding subText(Task task) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 4,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(task.subText),
        if (task.subText.isNotEmpty)
          const SizedBox(
            height: 12,
          ),
        Padding(
          padding: const EdgeInsets.only(
            right: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 30,
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      task.tag,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      task.tagText,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(task.notifiicon1),
                  Text(
                    task.notifiText1,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  if (task.notifiicon2 != null) Icon(task.notifiicon2),
                  if (task.notifiText2.isNotEmpty)
                    Text(
                      task.notifiText2,
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
