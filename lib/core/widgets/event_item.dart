import 'package:evently_sun_online/core/resources/assets_manager.dart';
import 'package:evently_sun_online/core/resources/colors_manager.dart';
import 'package:evently_sun_online/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EventItem extends StatelessWidget {
  const EventItem({super.key, required this.event});
final EventModel event;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(8),
      margin: REdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: double.infinity,
      height: 203.h,
      decoration: BoxDecoration(
borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: ColorsManager.blue, width: 1),
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(ImageAssets.meeting))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("21", style: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.bold, color: ColorsManager.blue),),
                  Text("Nov", style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.bold, color: ColorsManager.blue),),
                ],
              ),
            ),
          ),
          Spacer(),
          Card(
            child:Padding(
              padding:  REdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: Text(event.title, style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.bold, color: ColorsManager.black),)),
                  Icon(Icons.favorite_border, color: ColorsManager.blue,)
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
