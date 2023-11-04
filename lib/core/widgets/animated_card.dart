import 'package:flutter/material.dart';
import 'package:real_state_task/core/animated_card_model.dart';
import 'package:real_state_task/core/utils/app_colors.dart';
import 'package:real_state_task/core/widgets/primary_button.dart';
import 'package:real_state_task/core/widgets/vertical_space.dart';

class AnimatedCard extends StatelessWidget {
  final AnimatedCardModel card;

  const AnimatedCard({
    super.key,
    required this.card,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTitle(),
              _buildSubTitle(),
              const VerticalSpace(space: 16),
              _buildPrimaryButton(),
            ],
          ),
        ),
        _buildImage(),
      ],
    );
  }

  Image _buildImage() {
    return Image.asset(
      card.image,
      height: 144,
      width: 144,
    );
  }

  Widget _buildPrimaryButton() {
    return PrimaryButton(
      text: card.bText,
    );
  }

  Widget _buildTitle() {
    return Text(
      card.title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _buildSubTitle() {
    return card.subTitle != null
        ? Column(
            children: [
              const VerticalSpace(space: 4),
              Text(
                card.subTitle!,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: AppColors.achromatic400,
                ),
              ),
              const VerticalSpace(space: 2),
            ],
          )
        : const SizedBox();
  }
}
