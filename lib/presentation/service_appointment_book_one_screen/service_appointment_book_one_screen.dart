import 'package:counting_lives/core/app_export.dart';
import 'package:counting_lives/presentation/service_appointment_book_success_screen/service_appointment_book_success_screen.dart';
import 'package:counting_lives/widgets/app_bar/appbar_leading_image.dart';
import 'package:counting_lives/widgets/app_bar/appbar_title.dart';
import 'package:counting_lives/widgets/app_bar/appbar_trailing_image.dart';
import 'package:counting_lives/widgets/app_bar/custom_app_bar.dart';
import 'package:counting_lives/widgets/custom_checkbox_button.dart';
import 'package:counting_lives/widgets/custom_elevated_button.dart';
import 'package:counting_lives/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ServiceAppointmentBookOneScreen extends StatefulWidget {
  const ServiceAppointmentBookOneScreen({super.key});

  @override
  State<ServiceAppointmentBookOneScreen> createState() =>
      _ServiceAppointmentBookOneScreenState();
}

class _ServiceAppointmentBookOneScreenState
    extends State<ServiceAppointmentBookOneScreen> {
  final _RefNameController = TextEditingController();
  final formatter = DateFormat.yMd();
  List<String> serv_name = [
    "X-Ray",
    "CT-Scan",
    "MRI",
    "Doppler",
    "2D",
    "Sonography"
  ];
  var _datevar;
  var _timevar;
  String? service_value;
  void AppointmentDatePicker() async {
    final now = DateTime.now();
    final lastdate = DateTime(now.year, now.month + 1, now.day);
    final _datepicked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: lastdate,
    );
    final _timepicked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    setState(() {
      _datevar = formatter.format(_datepicked!);
      _timevar = _timepicked!.format(context);
    });
  }

  @override
  void dispose() {
    _RefNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 18.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.0,
              ),
              _buildDataFill(context),
              SizedBox(
                height: 40.0,
              ),
              _buildDateInput(context),
              SizedBox(
                height: 40.0,
              ),
              CustomElevatedButton(
                text: "BOOK",
                margin: EdgeInsets.symmetric(horizontal: 26.h),
                buttonStyle: CustomButtonStyles.fillPrimary,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => ServiceAppointmentBookSuccessScreen(date: _datevar, time: _timevar, servicename: service_value,)));
                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 39.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 22.v,
          bottom: 22.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Book an Appointment",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.fromLTRB(26.h, 21.v, 26.h, 22.v),
        ),
      ],
      styleType: Style.bgGradientnameonPrimaryContainernametealA700,
    );
  }

  Widget _buildDataFill(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Referred by : '),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.green[50],
                  hintText: "Doctor's name",
                ),
                maxLength: 50,
                controller: _RefNameController,
              ),
            )
          ],
        ),
        SizedBox(
          height: 40.0,
        ),
        Row(
          children: [
            Text("Please select a \nservice for appoinment "),
            SizedBox(
              width: 10.0,
            ),
            DropdownButton(
                value: service_value,
                hint: Text("Select Service"),
                items: serv_name
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  setState(() {
                    service_value = value.toString();
                  });
                }),
          ],
        ),
      ]),
    );
  }

  Widget _buildDateInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Container(
        color: Colors.green[10],
        child: Row(
          children: [
            Text(_datevar == null ? 'No Date Entered' : 'Date : $_datevar'),
            const SizedBox(
              width: 10,
            ),
            Text(_timevar == null ? 'No time picked' : 'Time : $_timevar'),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: AppointmentDatePicker,
              icon: Icon(
                Icons.calendar_month_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
