import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_home_rent_app/core/utils/app_styles.dart';
import 'package:flutter_home_rent_app/core/utils/size_config.dart';
import 'package:flutter_home_rent_app/core/utils/image_utils.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Location',
                style: kRalewayRegular.copyWith(
                  color: kGrey83,
                  fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                ),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical! * 0.5),
              Row(
                children: [
                  Text(
                    'Dhaka',
                    style: kRalewayMedium.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 5,
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeVertical! * 0.5,
                  ),
                  SvgPicture.asset(ImageUtils.icDropDown),
                ],
              ),
            ],
          ),
          SvgPicture.asset(ImageUtils.icNotification),
        ],
      ),
    );
  }
}
