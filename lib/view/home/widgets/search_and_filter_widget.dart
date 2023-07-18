import 'package:flutter/material.dart';
import 'package:flutter_home_rent_app/core/utils/app_styles.dart';
import 'package:flutter_home_rent_app/core/utils/image_utils.dart';
import 'package:flutter_home_rent_app/core/utils/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchAndFilterWidget extends StatelessWidget {
  const SearchAndFilterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding20),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: kRalewayRegular.copyWith(
                color: kBlack,
                fontSize: SizeConfig.blockSizeHorizontal! * 3,
              ),
              controller: TextEditingController(),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: kPadding16,
                ),
                prefixIcon: SvgPicture.asset(ImageUtils.icSearch),
                hintText: 'Search address or near you',
                border: kInputBorder,
                errorBorder: kInputBorder,
                disabledBorder: kInputBorder,
                focusedBorder: kInputBorder,
                enabledBorder: kInputBorder,
                hintStyle: kRalewayRegular.copyWith(
                  color: kGrey85,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
                filled: true,
                fillColor: kWhiteF7,
              ),
            ),
          ),
          SizedBox(width: SizeConfig.blockSizeHorizontal! * 4),
          Container(
            height: 49,
            width: 49,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius10),
              gradient: kLinearGradientBlue,
            ),
            child: SvgPicture.asset(ImageUtils.icFilter),
          )
        ],
      ),
    );
  }
}
