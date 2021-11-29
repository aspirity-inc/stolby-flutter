import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/application/rock_list/rock_list_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RocksPage extends StatelessWidget {
  const RocksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return BlocBuilder<RockListBloc, RockListState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(8),
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Text("Search was not been iplemented"),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 24,
                    ),
                  ],
                ),
              ),
              Text(
                localization.appbar_title_rocks,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              CustomScrollView(),
            ],
          ),
        );
      },
    );
  }
}
