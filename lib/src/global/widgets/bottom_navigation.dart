import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:savart_remaster/src/resource/colors.dart';

final bottomNavigationIndex = StateProvider((ref) => 0);

class SavartBottomNavigation extends StatelessWidget {
  const SavartBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade800,
            blurRadius: 20.0,
          )
        ]
      ),
      padding: Platform.isIOS
          ? const EdgeInsets.fromLTRB(30, 10, 30, 20)
          : const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const BottomNavigationItem(
            index: 0,
            seletectedIconData: Icons.work,
            unseletectedIconData: Icons.work_outline,
            label: 'Portfolio',
          ),
          FloatingActionButton(
            onPressed: (){}, backgroundColor: AppColors.customBlue,
            child: const Icon(Icons.add),
          ),
          const BottomNavigationItem(
            index: 1,
            seletectedIconData: Icons.lightbulb,
            unseletectedIconData: Icons.lightbulb_outline,
            label: 'Advice',
          ),
        ],
      ),
    );
  }
}

class BottomNavigationItem extends ConsumerWidget {
  const BottomNavigationItem({
    super.key,
    required this.index,
    required this.seletectedIconData,
    required this.unseletectedIconData,
    required this.label,
  });

  final int index;
  final IconData seletectedIconData;
  final IconData unseletectedIconData;
  final String label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = index == ref.watch(bottomNavigationIndex);

    return InkWell(
      onTap: () {
        ref.read(bottomNavigationIndex.notifier).update((state) => index);
      },
      child: Column(
        children: [
          Icon(
            selected ? seletectedIconData : unseletectedIconData,
            color: Colors.white,
          ),
          Text(
            label,
            style: !selected
                ? TextStyle(color: Colors.grey.shade200)
                : const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
