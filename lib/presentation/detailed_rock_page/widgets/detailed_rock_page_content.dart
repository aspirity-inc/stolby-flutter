import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/application/detailed_rock_bloc/detailed_rock_bloc.dart';
import 'package:stolby_flutter/presentation/detailed_rock_page/widgets/add_marker_button.dart';
import 'package:stolby_flutter/presentation/detailed_rock_page/widgets/detailed_rock_appbar.dart';
import 'package:stolby_flutter/presentation/detailed_rock_page/widgets/rock_info_row.dart';
import 'package:stolby_flutter/presentation/detailed_rock_page/widgets/rock_text.dart';

class DetailedRockPageContent extends StatelessWidget {
  const DetailedRockPageContent({Key? key}) : super(key: key);

  String _difficultyToString(int difficulty, AppLocalizations localization) {
    switch (difficulty) {
      case 0:
        return localization.difficulty_short_0;
      case 1:
        return localization.difficulty_short_1;
      case 2:
        return localization.difficulty_short_2;
      case 3:
        return localization.difficulty_short_3;
      default:
        return "difficulty name not found";
    }
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return BlocBuilder<DetailedRockBloc, DetailedRockState>(
      builder: (context, state) {
        return Scaffold(
          appBar: DetailedRockAppbar(
            difficulty: state.rock.fold(
              () => null,
              (r) => _difficultyToString(
                r.difficulty,
                localization,
              ),
            ),
          ),
          body: state.rock.fold(
            () => const SizedBox(),
            (rock) => Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Text(
                        rock.localizedName,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () {},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/images/" + rock.picName + ".jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      RockInfoRow(
                        rock: rock,
                        distance: state.distance.fold(() => null, (a) => a),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      RockText(
                        shortInfo: rock.shortInfo,
                        fullInfo: rock.fullInfo,
                      ),
                      const SizedBox(
                        height: 64,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 0,
                  right: 0,
                  child: AddMarkerButton(
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
