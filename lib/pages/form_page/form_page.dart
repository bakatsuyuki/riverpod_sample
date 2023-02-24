import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_sample/extensions/localizations_helper.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const _Body(),
      appBar: AppBar(
        title: Text(
          context.localizations.form,
        ),
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            ..._FormValueType.values.map((e) => _TextField(type: e)),
            const _SubmitButton(),
          ],
        ),
      ),
    );
  }
}

class _TextField extends ConsumerWidget {
  const _TextField({Key? key, required this.type}) : super(key: key);

  final _FormValueType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) => TextFormField(
        controller: ref.watch(textEditingControllerProviders(type)),
        decoration: InputDecoration(
          labelText: context.localizations.getText(type),
        ),
        textInputAction: _FormValueType.values.last == type
            ? TextInputAction.done
            : TextInputAction.next,
      );
}

class _SubmitButton extends ConsumerWidget {
  const _SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: ref.watch(isEnabledProvider) ? () {} : null,
      child: Text(context.localizations.submit),
    );
  }
}

final textEditingControllerProviders = ChangeNotifierProvider.family(
  (ref, _FormValueType _) => TextEditingController(),
);

final isEnabledProvider = Provider(
  (ref) => _FormValueType.values
      .map((e) => ref.watch(textEditingControllerProviders(e)))
      .none(
        (element) => element.text.isEmpty,
      ),
);

enum _FormValueType {
  id,
  password,
  name,
  postalCode,
  address,
  hobby,
  oneLastWord;
}

extension _AppLocalizationsExtension on AppLocalizations {
  String getText(_FormValueType type) {
    switch (type) {
      case _FormValueType.id:
        return id;
      case _FormValueType.password:
        return password;
      case _FormValueType.name:
        return name;
      case _FormValueType.postalCode:
        return postalCode;
      case _FormValueType.address:
        return address;
      case _FormValueType.hobby:
        return hobby;
      case _FormValueType.oneLastWord:
        return oneLastWord;
    }
  }
}
