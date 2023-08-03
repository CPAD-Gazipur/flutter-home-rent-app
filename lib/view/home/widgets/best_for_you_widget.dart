import 'package:flutter/material.dart';
import 'package:flutter_home_rent_app/core/shared/header_title_widget.dart';
import 'package:flutter_home_rent_app/core/utils/app_styles.dart';
import 'package:flutter_home_rent_app/core/utils/size_config.dart';
import 'package:flutter_home_rent_app/view/home/widgets/product_list_tile_widget.dart';
import 'package:flutter_home_rent_app/view/product_details/product_details_screen.dart';

class BestForYouWidget extends StatelessWidget {
  const BestForYouWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        HeaderTitleWidget(
          title: 'Best for you',
          onSeeMorePressed: () {},
        ),
        const SizedBox(height: kPadding8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding20),
          child: ListView.builder(
            //scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 10,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ProductListTitleWidget(
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
        )
      ],
    );
  }
}
