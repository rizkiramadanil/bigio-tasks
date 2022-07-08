import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_wars/domain/entities/starships.dart';

class StarshipsWidget extends StatelessWidget {
  final Starships starships;

  const StarshipsWidget(this.starships, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(right: 8, left: 8, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                starships.name,
                style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 5),
              Text(
                'Model : ${starships.model}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Manufacturer : ${starships.manufacturer}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Cost in Credits : ${starships.costInCredits}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Length : ${starships.length}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Max Atmosphering Speed : ${starships.maxAtmospheringSpeed}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Crew : ${starships.crew}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Passengers : ${starships.passengers}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Cargo Capacity : ${starships.cargoCapacity}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Consumables : ${starships.consumables}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Hyperdrive Rating : ${starships.hyperdriveRating}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'MGLT : ${starships.mglt}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Starship Class : ${starships.starshipClass}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
