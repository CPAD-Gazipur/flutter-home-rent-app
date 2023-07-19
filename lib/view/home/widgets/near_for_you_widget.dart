import 'package:flutter/material.dart';
import 'package:flutter_home_rent_app/core/data/app_data.dart';
import 'package:flutter_home_rent_app/core/utils/app_styles.dart';
import 'package:flutter_home_rent_app/core/utils/image_utils.dart';
import 'package:flutter_home_rent_app/core/utils/size_config.dart';
import 'package:flutter_home_rent_app/view/home/widgets/product_short_view_widget.dart';
import 'package:flutter_home_rent_app/view/product_details/product_details_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NearForYouWidget extends StatelessWidget {
  const NearForYouWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Near for you',
                style: kRalewayMedium.copyWith(
                  color: kBlack,
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                ),
              ),
              Text(
                'See more',
                style: kRalewayRegular.copyWith(
                  color: kGrey85,
                  fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: kPadding24),
        SizedBox(
          width: double.infinity,
          height: 272,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ProductShortViewWidget(
                index: index,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductDetailsScreen(),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
