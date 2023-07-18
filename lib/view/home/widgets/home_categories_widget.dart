import 'package:flutter/material.dart';
import 'package:flutter_home_rent_app/core/data/app_data.dart';
import 'package:flutter_home_rent_app/core/utils/app_styles.dart';
import 'package:flutter_home_rent_app/core/utils/size_config.dart';

class HomeCategoriesWidget extends StatelessWidget {
  const HomeCategoriesWidget({
    Key? key,
    required int current,
    required this.onTap,
  })  : _current = current,
        super(key: key);

  final int _current;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: double.infinity,
      height: 34,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: homeCategories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onTap(index);
            },
            child: Container(
              margin: EdgeInsets.only(
                left: index == 0 ? kPadding20 : 12,
                right: index == (homeCategories.length - 1) ? kPadding20 : 0,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: kPadding16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius10),
                boxShadow: [
                  BoxShadow(
                    color: index == _current
                        ? kBlue.withOpacity(0.1)
                        : kBlue.withOpacity(0),
                    spreadRadius: 0,
                    blurRadius: 18,
                    offset: const Offset(0, 18),
                  ),
                ],
                gradient: index == _current
                    ? kLinearGradientBlue
                    : kLinearGradientWhite,
              ),
              child: Center(
                child: Text(
                  homeCategories[index],
                  style: kRalewayMedium.copyWith(
                    color: index == _current ? kWhite : kBlack,
                    fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
