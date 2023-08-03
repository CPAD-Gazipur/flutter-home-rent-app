import 'package:flutter/material.dart';
import 'package:flutter_home_rent_app/core/utils/app_styles.dart';
import 'package:flutter_home_rent_app/core/utils/size_config.dart';
import 'package:flutter_home_rent_app/view/home/widgets/best_for_you_widget.dart';
import 'package:flutter_home_rent_app/view/home/widgets/home_app_bar_widget.dart';
import 'package:flutter_home_rent_app/view/home/widgets/home_categories_widget.dart';
import 'package:flutter_home_rent_app/view/home/widgets/near_for_you_widget.dart';
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
              const NearForYouWidget(),
              const SizedBox(height: kPadding8),
              const BestForYouWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
