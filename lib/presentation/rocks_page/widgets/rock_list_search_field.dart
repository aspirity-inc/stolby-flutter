import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/application/rock_list/rock_list_bloc.dart';

class RockListSearchField extends StatelessWidget {
  const RockListSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return BlocBuilder<RockListBloc, RockListState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          height: 48,
          decoration: BoxDecoration(
            color: const Color(0xFFEAEAEA),
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextFormField(
            onChanged: (value) => context.read<RockListBloc>().add(
                  RockListEvent.searchStringChanged(
                    searchString: value,
                  ),
                ),
            initialValue: '',
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              hintText: localization.search_toolbar_hint,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              suffixIcon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
        );
      },
    );
  }
}
