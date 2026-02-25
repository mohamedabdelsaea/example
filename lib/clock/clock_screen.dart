import 'dart:async';
import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class ClockScreen extends StatefulWidget {
  const ClockScreen({super.key});

  @override
  State<ClockScreen> createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  late Timer timer;
  late tz.Location location;

  String selectedZone = 'Africa/Cairo';
  DateTime currentTime = DateTime.now();

  final List<String> zones = const [
    'Africa/Cairo',
    'Asia/Gaza',
    'Asia/Riyadh',
    'Asia/Kuwait',
    'Asia/Qatar',
    'Asia/Bahrain',
    'Asia/Muscat',
    'Asia/Baghdad',
    'Asia/Amman',
    'Asia/Beirut',
    'Asia/Damascus',
    'Africa/Khartoum',
    'Africa/Casablanca',
    'Africa/Algiers',
    'Africa/Tunis',
    'Africa/Tripoli',
    'Asia/Aden',
    'Asia/Dubai',
  ];

  @override
  void initState() {
    super.initState();
    tz.initializeTimeZones();
    location = tz.getLocation(selectedZone);
    _updateTime();

    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _updateTime();
    });
  }

  void _updateTime() {
    setState(() {
      currentTime = tz.TZDateTime.now(location);
    });
  }

  void _changeZone(String zone) {
    setState(() {
      selectedZone = zone;
      location = tz.getLocation(zone);
      _updateTime();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: DropdownButtonFormField<String>(
              initialValue: selectedZone,
              decoration: const InputDecoration(
                labelText: 'City',
                labelStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
              items: zones
                  .map(
                    (zone) => DropdownMenuItem(value: zone, child: Text(zone)),
                  )
                  .toList(),
              onChanged: (value) {
                if (value != null) _changeZone(value);
              },
            ),
          ),
          Expanded(
            child: AnalogClock(
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.black),
                color: Colors.transparent,
                shape: BoxShape.circle,
              ),
              width: size.width * 0.7,
              isLive: false,
              datetime: currentTime,
              useMilitaryTime: true,
              hourHandColor: Colors.blue,
              minuteHandColor: Colors.black,
              showSecondHand: true,
              numberColor: Colors.black87,
              showNumbers: true,
              showAllNumbers: true,
              textScaleFactor: 1.9,
              showTicks: true,
              secondHandColor: Colors.red,
              showDigitalClock: true,
            ),
          ),
        ],
      ),
    );
  }
}
