import 'package:evently_sun_online/core/extensions/date_time_ex.dart';
import 'package:evently_sun_online/core/resources/assets_manager.dart';
import 'package:evently_sun_online/core/resources/colors_manager.dart';
import 'package:evently_sun_online/core/widgets/custom_elevated_button.dart';
import 'package:evently_sun_online/core/widgets/custom_tab_bar.dart';
import 'package:evently_sun_online/core/widgets/custom_text_button.dart';
import 'package:evently_sun_online/core/widgets/custom_text_form_field.dart';
import 'package:evently_sun_online/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  DateTime selectedDateTime = DateTime.now(); /// current date, current time
  TimeOfDay selectedTimeTemp = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Event")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Image.asset(ImageAssets.meeting),
            ),
            SizedBox(height: 16.h),
            CustomTabBar(
              categories: CategoryModel.categories,
              selectedBgColor: ColorsManager.blue,
              selectedFgColor: ColorsManager.white,
              unSelectedBgColor: Colors.transparent,
              unSelectedFgColor: ColorsManager.blue,
            ),
            SizedBox(height: 16.h),
            Text("Title", style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 8.h),
            CustomTextFormField(
              hintText: "Event Title",
              keyboardType: TextInputType.text,
              prefixIcon: Icons.edit_note,
            ),
            SizedBox(height: 16.h),
            Text("Description", style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 8.h),
            CustomTextFormField(
              hintText: "Event Description",
              keyboardType: TextInputType.text,
              maxLines: 4,
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Icon(Icons.date_range_rounded, color: ColorsManager.black),
                SizedBox(width: 4.w),
                Text(
                 selectedDateTime.toFormattedDate,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Spacer(),
                CustomTextButton(text: "Choose Data", onTap: _selectEventData),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Icon(Icons.date_range_rounded, color: ColorsManager.black),
                SizedBox(width: 4.w),
                Text(
                 selectedDateTime.toFormattedTime,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Spacer(),
                CustomTextButton(text: "Choose Time", onTap:_selectEventTime),

              ],
            ),
            SizedBox(height: 24,),
            CustomElevatedButton(text: "Add Event", onPress: (){})
          ],
        ),
      ),
    );
  }

  void _selectEventData() async{
  selectedDateTime = await  showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime.now().add(Duration(days: 365))) ?? selectedDateTime;
  selectedDateTime = selectedDateTime.copyWith(hour: selectedTimeTemp.hour, minute: selectedTimeTemp.minute);
  print(selectedDateTime.toString());
  setState(() {

  });
  }

  void _selectEventTime() async{
    selectedTimeTemp = await showTimePicker(context: context, initialTime: TimeOfDay.now()) ?? selectedTimeTemp;
selectedDateTime = selectedDateTime.copyWith(hour: selectedTimeTemp.hour, minute: selectedTimeTemp.minute);
  setState(() {

  });
  }
}
