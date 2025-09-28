import 'package:evently_sun_online/core/resources/colors_manager.dart';
import 'package:evently_sun_online/core/widgets/custom_tab_bar.dart';
import 'package:evently_sun_online/core/widgets/event_item.dart' show EventItem;
import 'package:evently_sun_online/core/widgets/tab_item.dart';
import 'package:evently_sun_online/models/category_model.dart';
import 'package:evently_sun_online/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: REdgeInsets.symmetric(vertical: 24),
          width: double.infinity,

          decoration: BoxDecoration(
            color: ColorsManager.blue,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.r)),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back ✨",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Text(
                            "Muhammed Saad",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: ColorsManager.white,
                              ),
                              Text(
                                "Cairo, Egypt",
                                style: Theme.of(context).textTheme.titleSmall
                                    ?.copyWith(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.light_mode, color: ColorsManager.white),
                      SizedBox(width: 4.w),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "En",
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                CustomTabBar(
                  categories: CategoryModel.categoriesWithAll,
                  selectedBgColor: ColorsManager.whiteBlue,
                  selectedFgColor: ColorsManager.blue,
                  unSelectedBgColor: Colors.transparent,
                  unSelectedFgColor: ColorsManager.whiteBlue,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(padding: EdgeInsets.zero,
            itemBuilder: (context, index) => EventItem(
              event: EventModel(
                category: CategoryModel.categories[2],
                title: "Meeting for Updating The Development Method ",
                description: "Meeting for Updating The Development Method ",
                dateTime: DateTime.now(),
                timeOfDay: TimeOfDay.now(),
              ),
            ),
            itemCount: 20,
          ),
        ),
      ],
    );
  }
}
