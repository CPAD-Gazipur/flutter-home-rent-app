import 'package:flutter/material.dart';
import 'package:flutter_home_rent_app/core/data/app_data.dart';
import 'package:flutter_home_rent_app/core/utils/app_styles.dart';
import 'package:flutter_home_rent_app/core/utils/image_utils.dart';
import 'package:flutter_home_rent_app/core/utils/size_config.dart';
import 'package:flutter_home_rent_app/view/home/widgets/title_icon_widget.dart';

class ProductListTitleWidget extends StatelessWidget {
  final VoidCallback onTap;

  const ProductListTitleWidget({Key? key, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: 70,
      margin: const EdgeInsets.only(bottom: kPadding24),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    kBorderRadius10,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: kBlack.withOpacity(0.1),
                      blurRadius: 18,
                      spreadRadius: 0,
                      offset: const Offset(0, 18),
                    )
                  ],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(buildingImage),
                  )),
            ),
            SizedBox(
              width: SizeConfig.blockSizeHorizontal! * 4.5,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Orchad House',
                    style: kRalewayMedium.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 0.5,
                  ),
                  Text(
                    'Tk. 2.500.000.000 / Year',
                    style: kRalewayRegular.copyWith(
                      color: kBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const TitleIconWidget(
                          title: '6 Bedroom',
                          icon: ImageUtils.icBedRoom,
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeVertical! * 1,
                        ),
                        const TitleIconWidget(
                          title: '4 Bathroom',
                          icon: ImageUtils.icBathRoom,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
