import 'package:real_state_task/core/utils/app_images.dart';

class AnimatedCardModel {
  final String title;
  final String? subTitle;
  final String bText;
  final String image;

  AnimatedCardModel({
    required this.title,
    required this.bText,
    required this.image,
    this.subTitle,
  });
}

List<AnimatedCardModel> listOfCards = [
  AnimatedCardModel(
    title: 'Management platform real estate asset',
    subTitle: 'Utilizing a variety of properties oversight and construction.',
    bText: 'Request',
    image: AppImages.illstrate_1,
  ),
  AnimatedCardModel(
    title: 'Multi-Services for Your Real Estate Needs',
    bText: 'Order',
    image: AppImages.illstrate_2,
  ),
  AnimatedCardModel(
    title: 'Leasing, Maintenance, and Managing Your Properties with Ease',
    bText: 'My Assets',
    image: AppImages.illstrate_3,
  ),
];
