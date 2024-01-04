import 'package:flutter/material.dart';

/// <summary>Summary Page Component</summary>
/// This returns a summary of the day, and all activities which were supposed to be done in this particular day
/// It also renders a list on top of the last 5 days before today with today as the fifth on the top bar, it can be scrolled left to reveal last days
/// Then rows with the activities and their status
/// HERO: Overall Monthly Progress Percentage // month name, days remaining, work hour remaining, done days, expenses, incomes
/// TOP: Day Name, with its day of the week, TOPRIGHT: Done percentage of the day
/// BOTTOM: List of activities with their status
/// NAVBAR: Normal Consistent Navbar of all days
class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text(
            'Summary Page',
          ),
        ],
      ),
    );
  }
}
