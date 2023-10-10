import 'package:flutter/material.dart';

class RatingProductDetail extends StatelessWidget{
  const RatingProductDetail({super.key});


  @override
  Widget build(BuildContext context) {
    const commonTextStyle = TextStyle(
      color: Colors.black,
      fontFamily: 'PoppinsRegular',
      fontWeight: FontWeight.w400,
      height: 1.2, // Adjust line height as needed
    );

    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Megasånade diasamma. Trerade reaktigt. Klimatsäkra sen '
              'Dining. Nomofobi. Lalingar kaffeflicka. Dys mandatpingis. '
              'Revöra. Dysamma svischa. Osm multinyde. Monod trerade. '
              'Ner orade. Valigt teleren. Gigaplavis boomer. Antin ost. '
              'Kontrare tesamma. Reren pona. Resabenade san. Ortad. Leni',
              style: commonTextStyle,
            ),
            SizedBox(height: 16),
            Text(
              "Owner’s Details",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'PoppinsRegular',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'About',
              style: TextStyle(
                color: Color(0xFFA87B5D),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Megasånade diasamma. Trerade reaktigt. Klimatsäkra sen. '
              'Dining. Nomofobi. Lalingar kaffeflicka. Dys mandatpingis. '
              'Revöra. Dysamma svischa. Osm multinyde. Monod trerade.',
              style: commonTextStyle,
            ),
            SizedBox(height: 16),
            Text(
              'Location',
              style: TextStyle(
                color: Color(0xFFA87B5D),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Los Angeles, CA 90015',
              style: commonTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
