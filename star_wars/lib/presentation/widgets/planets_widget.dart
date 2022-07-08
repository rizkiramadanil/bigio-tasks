import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_wars/domain/entities/planets.dart';

class PlanetsWidget extends StatelessWidget {
  final Planets planets;

  const PlanetsWidget(this.planets, {Key? key}) : super(key: key);

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
                planets.name,
                style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 5),
              Text(
                'Rotation Period : ${planets.rotationPeriod}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Orbital Period : ${planets.orbitalPeriod}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Diameter : ${planets.diameter}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Climate : ${planets.climate}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Gravity : ${planets.gravity}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Diameter : ${planets.diameter}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Terrain : ${planets.terrain}',
                style: GoogleFonts.poppins(
                    fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Surface Water : ${planets.surfaceWater}',
                style: GoogleFonts.poppins(
                  fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                'Population : ${planets.population}',
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
