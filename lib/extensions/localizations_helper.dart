import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension LocalizationsHelper on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this)!;
}
