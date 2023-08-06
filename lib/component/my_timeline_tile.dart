import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:timeline_widget/component/event_card.dart';

class TimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;

  const TimeLineTile(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      required this.eventCard});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
            color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100),
        indicatorStyle: IndicatorStyle(
            width: 30,
            color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100,
            iconStyle: IconStyle(
                iconData: Icons.done,
                color: isPast ? Colors.white : Colors.deepPurple.shade100,
            ),
        ),
        endChild:  EventCard(
          isPast: isPast,
          child: eventCard,
        ),
      ),
    );
  }
}
