import 'package:flutter/material.dart';
import 'package:flutter_home_rent_app/core/utils/app_styles.dart';
import 'package:flutter_home_rent_app/core/utils/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleIconWidget extends StatelessWidget {
  final String icon, title;

  const TitleIconWidget({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      children: [
        SvgPicture.asset(icon),
        SizedBox(
          width: SizeConfig.blockSizeVertical! * 0.5,
        ),
        Text(
          title,
          style: kRalewayRegular.copyWith(
            color: kGrey85,
            fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
          ),
        ),
      ],
    );
  }
}
