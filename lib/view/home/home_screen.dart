import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_home_rent_app/core/data/app_data.dart';
import 'package:flutter_home_rent_app/core/utils/app_styles.dart';
import 'package:flutter_home_rent_app/core/utils/size_config.dart';
import 'package:flutter_home_rent_app/view/home/widgets/home_app_bar_widget.dart';
import 'package:flutter_home_rent_app/view/home/widgets/home_categories_widget.dart';
import 'package:flutter_home_rent_app/view/home/widgets/search_and_filter_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeAppBarWidget(),
              const SizedBox(height: kPadding24),
              const SearchAndFilterWidget(),
              const SizedBox(height: kPadding24),
              HomeCategoriesWidget(
                current: _current,
                onTap: (index) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
              const SizedBox(height: kPadding24),
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
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 272,
                      width: 222,
                      padding: EdgeInsets.only(
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
                            offset: const Offset(0, 18),
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
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(kBorderRadius20),
                                  bottomRight: Radius.circular(kBorderRadius20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
