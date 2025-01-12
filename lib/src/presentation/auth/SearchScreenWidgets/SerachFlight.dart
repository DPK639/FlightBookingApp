import 'package:flightbooking/app/theme/appTheme.dart';
import 'package:flutter/material.dart';

class Serachflight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color_white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 8.0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                // Airplane Icon
                Icon(
                  Icons.flight_takeoff,
                  color:Color_Icon,
                ),
                const SizedBox(width: 16.0),
                // "From" Input
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'From',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            // Line connecting "From" to "To"
            Row(
              children: [
                const SizedBox(width: 24.0), // Aligning line with icons
                Expanded(
                  child: Container(
                    height: 2.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.green, Colors.green.withOpacity(0.0)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                  ),
                ),
                // Circular Button with "1"
                const SizedBox(width: 16.0),
                CircleAvatar(
                  radius: 16.0,
                  backgroundColor: Color_Icon.withAlpha(50),
                  child:  Transform.rotate(
                    alignment: Alignment.center,
                    angle: 1.59,
                    child: Icon(
                      Icons.multiple_stop,
                        color: Color_Icon,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                // Location Icon
                Icon(
                  Icons.location_on,
                  color: Color_Icon,
                ),
                const SizedBox(width: 16.0),
                // "To" Input
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'To',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
