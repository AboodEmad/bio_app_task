import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBioCard extends StatelessWidget {
  final IconData _leadingIcon;
  final IconData _trailingIcon;
  final String _subTitle;
  final String _title;
  final double _marginBottom;

  const CustomBioCard(
      {Key? key,
      required IconData leadingIcon,
      required IconData trailingIcon,
      required String subTitle,
      required String title,
      double marginBottom = 0})
      : _leadingIcon = leadingIcon,
        _trailingIcon = trailingIcon,
        _subTitle = subTitle,
        _title = title,
        _marginBottom = marginBottom,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 20,right: 20,bottom: _marginBottom),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      shadowColor: Colors.amber,
      borderOnForeground: true,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(_leadingIcon),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _title,
                  style: GoogleFonts.actor(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  _subTitle,
                  style: GoogleFonts.actor(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
            Spacer(),
            Icon(_trailingIcon)
          ],
        ),
      ),
    );
  }
}
