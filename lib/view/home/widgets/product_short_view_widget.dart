import 'package:flutter/material.dart';
import 'package:flutter_home_rent_app/core/data/app_data.dart';
import 'package:flutter_home_rent_app/core/utils/app_styles.dart';
import 'package:flutter_home_rent_app/core/utils/image_utils.dart';
import 'package:flutter_home_rent_app/core/utils/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductShortViewWidget extends StatelessWidget {
  const ProductShortViewWidget({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  final int index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 272,
        width: 222,
        margin: EdgeInsets.only(
          left: kPadding20,
          right: index == (5 - 1) ? kPadding20 : 0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRadius20),
          boxShadow: [
            BoxShadow(
              color: kBlack.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 18,
              offset: const Offset(0, 0),
            )
          ],
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(buildingImage),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 136,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(kBorderRadius20),
                    bottomRight: Radius.circular(kBorderRadius20),
                  ),
                  gradient: kLinearGradientBlack,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding16,
                  vertical: kPadding20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kPadding8,
                            vertical: kPadding4,
                          ),
                          decoration: BoxDecoration(
                            color: kBlack.withOpacity(0.24),
                            borderRadius: BorderRadius.circular(
                              kBorderRadius10,
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(ImageUtils.icPinPoint),
                              const SizedBox(width: kPadding4),
                              Text(
                                '1.8 km',
                                style: kRalewayRegular.copyWith(
                                  color: kWhite,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.5,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dreamsville House',
                          style: kRalewayMedium.copyWith(
                            color: kWhite,
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 0.5,
                        ),
                        Text(
                          'Jl. Sultan Iskandar Muda',
                          style: kRalewayRegular.copyWith(
                            color: kWhite,
                            fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
