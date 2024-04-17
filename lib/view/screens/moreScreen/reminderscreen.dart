import 'package:budget_tracker_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reminder extends StatefulWidget {
  const Reminder({super.key});

  @override
  State<Reminder> createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'Reminders',
          style: GoogleFonts.poppins(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        shape: CircleBorder(),
        onPressed: () {

        },
        child: Icon(Icons.add,color: Colors.white,),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            height: height / 6,
            width: width,
            color: Colors.red.shade100,
            child: Column(
              children: [
                Text(
                  para,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  height: height / 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 220),
                  child: Text(
                    'Enable notification',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 170),
            height: height / 5,
            width: width/3,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/img/reminder.png'),),
            ),
          ),
          SizedBox(height: height/35,),
          Text('No active reminders',style: GoogleFonts.poppins(
              fontSize: 18,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 18),
            child: Text('Add a reminders to remind you for an expense later or set recurring reminder for the recurring expense.',style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.grey,
            )),
          ),
        ],
      ),
    );
  }
}
