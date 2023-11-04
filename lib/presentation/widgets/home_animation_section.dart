import 'dart:async';
import 'package:flutter/material.dart';
import 'package:real_state_task/core/animated_card_model.dart';
import 'package:real_state_task/core/utils/app_colors.dart';
import 'package:real_state_task/core/widgets/animated_card.dart';
import 'package:real_state_task/core/widgets/vertical_space.dart';
import 'package:real_state_task/presentation/widgets/home_dot_indicator.dart';

class HomeAnimationSection extends StatefulWidget {
  const HomeAnimationSection({super.key});

  @override
  State<HomeAnimationSection> createState() => _HomeAnimationSectionState();
}

class _HomeAnimationSectionState extends State<HomeAnimationSection> {
  int _currentPage = 0;
  late Timer _timer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildAnimatedCard(),
        const VerticalSpace(space: 10),
        _buildDotIndicator(),
      ],
    );
  }

  @override
  void initState() {
    cotinueShowingCards();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      for (var card in listOfCards) {
        precacheImage(AssetImage(card.image), context);
      }
    });
    super.initState();
  }

  void cotinueShowingCards() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        setState(() {
          _currentPage++;
        });
      } else {
        setState(() {
          _currentPage = 0;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  HomeDotIndicator _buildDotIndicator() {
    return HomeDotIndicator(
      activeIndex: _currentPage,
      count: listOfCards.length,
    );
  }

  Container _buildAnimatedCard() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.lightRed,
      ),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 900),
        switchInCurve: Curves.easeIn,
        switchOutCurve: Curves.easeOut,
        child: AnimatedCard(
          key: ValueKey<int>(_currentPage),
          card: listOfCards[_currentPage],
        ),
      ),
    );
  }
}
