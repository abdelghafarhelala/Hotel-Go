import 'package:flutter/material.dart';
import 'package:hotelsco_task/core/resources/app_strings.dart';
import 'package:hotelsco_task/core/utils/app_colors.dart';
import 'package:intl/intl.dart';

class DatePickersComponent extends StatefulWidget {
  const DatePickersComponent({super.key});

  @override
  DatePickersComponentState createState() => DatePickersComponentState();
}

class DatePickersComponentState extends State<DatePickersComponent> {
  final TextEditingController _dateRangeController = TextEditingController();
  DateTime? _firstDate;
  DateTime? _secondDate;

  Future<void> _selectDates(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  AppStrings.selectDate,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 2.8,
                child: CalendarDatePicker(
                  initialDate: _firstDate ?? DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2101),
                  onDateChanged: (date) {
                    setState(() {
                      _firstDate = date;
                    });
                  },
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 2.8,
                child: CalendarDatePicker(
                  initialDate: _secondDate ?? DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2101),
                  onDateChanged: (date) {
                    setState(() {
                      _secondDate = date;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(AppStrings.cancel),
                  ),
                  TextButton(
                    onPressed: () {
                      if (_firstDate != null && _secondDate != null) {
                        actionAfterPressDonePicked(
                            context, _firstDate, _secondDate);
                      } else {
                        actionAfterPressDonePicked(
                            context, DateTime.now(), DateTime.now());
                      }
                    },
                    child: const Text(AppStrings.done),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void actionAfterPressDonePicked(
      BuildContext context, DateTime? firstDate, DateTime? secondDate) {
    final firstDateString = DateFormat('d-M-y').format(firstDate!);
    final secondDateString = DateFormat('d-M-y').format(secondDate!);

    setState(() {
      _dateRangeController.text = '$firstDateString  ==>  $secondDateString';
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _dateRangeController,
      readOnly: true,
      onTap: () => _selectDates(context),
      decoration: InputDecoration(
          suffixIcon: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                _dateRangeController.clear();
              },
              icon: const Icon(
                Icons.close,
                size: 18,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide:
                  const BorderSide(color: AppColors.primaryColor, width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide:
                  const BorderSide(color: AppColors.primaryColor, width: 1)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide:
                  const BorderSide(color: AppColors.primaryColor, width: 1)),
          hintText: AppStrings.selectDate,
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
          hintStyle:
              const TextStyle(color: AppColors.primaryColor, fontSize: 18)),
      textAlign: TextAlign.center,
    );
  }
}
