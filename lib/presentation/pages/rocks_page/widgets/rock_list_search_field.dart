import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/application/rock_list/rock_list_bloc.dart';

class RockListSearchField extends StatelessWidget {
  const RockListSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return BlocBuilder<RockListBloc, RockListState>(
      builder: (context, state) => Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        height: 48,
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: TextFormField(
          onChanged: (value) => context.read<RockListBloc>().add(
                RockListEvent.searchStringChanged(
                  searchString: value,
                ),
              ),
          initialValue: '',
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            hintText: localization?.search_toolbar_hint,
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintStyle: TextStyle(
              color: theme.colorScheme.onBackground,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            suffixIcon: Icon(
              Icons.search,
              color: theme.colorScheme.onBackground,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}
