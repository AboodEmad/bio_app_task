import 'package:bio_app/widgets/custom_bio_card_v2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Bio",
          style: GoogleFonts.anton(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.lightBlue,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
              Color(0xffF7EDDB),
              Color(0xffDFE8CC),
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  "https://scontent.fgza9-1.fna.fbcdn.net/v/t1.6435-1/169447468_854271085162441_1915060243771193875_n.jpg?stp=dst-jpg_p240x240&_nc_cat=110&ccb=1-7&_nc_sid=7206a8&_nc_ohc=iiOwY-oULLwAX_-WeSk&_nc_ht=scontent.fgza9-1.fna&oh=00_AT84Nmft2YLSCaQtAut7vQslSxp3EZJsEtQLdvzI9O1jdw&oe=62F1E2E3"),
            ),
            Text(
              "eLancer Flutter - 2022",
              style: GoogleFonts.actor(
                fontSize: 18,
                height: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "UCAS-Ti",
              style: GoogleFonts.actor(
                fontSize: 15,
                height: 2,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTileBioCard(
              onPressed: () => _showSnack(context: context, txt: "Email"),
              leadingIcon: Icons.email,
              trailingIcon: Icons.send,
              subTitle: "abood@gmail.com",
              title: "AboodEmad",
              marginBottom: 10,
            ),
            CustomListTileBioCard(
                onPressed: () => _showSnack(context: context, txt: "Phone Number"),
                leadingIcon: Icons.phone_android,
                trailingIcon: Icons.call,
                marginBottom: 10,
                subTitle: "abood@gmail.com",
                title: "AboodEmad"),
            CustomListTileBioCard(
                onPressed: () => _showSnack(context: context, txt: "Location"),
                leadingIcon: Icons.map,
                trailingIcon: Icons.location_city,
                subTitle: "abood@gmail.com",
                title: "AboodEmad"),
          ],
        ),
      ),
    );
  }

  void _showSnack({required BuildContext context, required String txt}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(txt),
      backgroundColor: Colors.amber,
      // width: 100,
      // elevation: 2,
      action: SnackBarAction(
        label: "UNDO",
        onPressed: (){
          /////
        },
      ),
      dismissDirection: DismissDirection.down ,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      behavior: SnackBarBehavior.fixed,
    ));
  }
}
