import 'package:flutter/material.dart';
import 'package:flutter_home_rent_app/core/utils/app_styles.dart';
import 'package:flutter_home_rent_app/core/utils/size_config.dart';

class HeaderTitleWidget extends StatelessWidget {
  const HeaderTitleWidget({
    Key? key,
    required this.title,
    required this.onSeeMorePressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onSeeMorePressed;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: kRalewayMedium.copyWith(
              color: kBlack,
              fontSize: SizeConfig.blockSizeHorizontal! * 4,
            ),
          ),
          TextButton(
            onPressed: onSeeMorePressed,
            child: Text(
              'See more',
              style: kRalewayRegular.copyWith(
                color: kGrey85,
                fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
