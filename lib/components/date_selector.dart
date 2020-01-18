import 'package:flutter/material.dart';
import 'dart:async';

class DateSelectorComponent extends StatelessWidget {

  final String type;
  DateSelectorComponent({ this.type });

  @override
  Widget build(BuildContext context) {

    String title;
    if(type == "start"){
      title = "Start:";
    }else{
      title = "End:";
    }

    DateTime _date = new DateTime.now();
    TimeOfDay _time = new TimeOfDay.now();

    Future<Null> _selectDate(BuildContext context) async {
      final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: new DateTime(2019),
        lastDate: new DateTime(2020)
      );

      if(picked != null && picked != _date){
        print('Date selected ${_date.toString()}');
      }

    }

    Future<Null> _selectTime(BuildContext context) async {
      final TimeOfDay timePicked = await showTimePicker(
        context: context,
        initialTime: _time,
      );

      if(timePicked != null && timePicked != _time) {
        print('Time selected: ${_time.toString()}');
      }
    }


    Future<Null> _selectDateAndTime(BuildContext context) async {
      await _selectDate(context);
      await _selectTime(context);
    }

    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Color(0xFFf7f7f7),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
              color: Color(0xFF2980b9)
            ),
          ),
          SizedBox(height: 10.0,),
          GestureDetector(
            onTap: (){
              // _selectDateAndTime(context);
            },
            child: Text(
              //'${_date.toString()} ${_time.toString()}',
              "21 Apr, 4.00 PM",
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 18.0
              ),
            ),
          )
        ],
      ),
    );
  }
}