import 'package:flutter/material.dart';
import 'package:pulselab/src/enums/priority.dart';

class PriorityLegend extends StatelessWidget {
  const PriorityLegend({super.key});

  @override
  Widget build(BuildContext context) {
    const priorityValues = Priority.values;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColor,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flexible(
              flex: 1,
              child: Text("Prioridades"),
            ),
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: List.generate(
                  priorityValues.length,
                  (index) {
                    final priorityValue = priorityValues[index];
                    return Text(
                      priorityValue.description,
                      style: TextStyle(
                        color: priorityValue.color,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
