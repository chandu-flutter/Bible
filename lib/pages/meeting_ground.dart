import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:thandri_sannidhi/maps/meeting.dart';

class MeetingGround extends StatefulWidget {
  const MeetingGround({super.key});

  @override
  State<MeetingGround> createState() => _MeetingGroundState();
}

class _MeetingGroundState extends State<MeetingGround> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: const Text('Meeting Ground'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const MyMapMeeting();
                        },
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: const Offset(4, 4),
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: Offset(-4, -4),
                        ),
                      ],
                    ),
                    width: 200,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 16.0,
                      ),
                      child: Lottie.asset("animations/location.json"),
                    ),
                  ),
                ),
              ),
              const Text(
                'THANDRI SANNIDHI MEETING GROUND',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 128, 0, 128),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'NEAR KOTHA RAJAPETA',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'CHILAKALURIPET,PALNADU DIST',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'PIN CODE-522616',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'ANDHRA PRADESH,INDIA',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
