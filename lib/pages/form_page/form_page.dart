import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
          children: const [
            _IdTextField(),
            _PasswordTextField(),
            _NameTextField(),
            _PostalCodeTextField(),
            _AddressTextField(),
            _HobbyTextField(),
            _OneLastWordTextField(),
          ],
        ),
      ),
    );
  }
}

class _IdTextField extends ConsumerWidget {
  const _IdTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => TextFormField(
        controller: ref.watch(idTextEditingController),
        decoration: InputDecoration(labelText: context.localizations.id),
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value) {
          //print(value);
        },
      );
}

class _PasswordTextField extends ConsumerWidget {
  const _PasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => TextFormField(
        controller: ref.watch(passwordTextEditingController),
        decoration: InputDecoration(labelText: context.localizations.password),
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value) {
          //print(value);
        },
      );
}

class _NameTextField extends ConsumerWidget {
  const _NameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => TextFormField(
        controller: ref.watch(nameTextEditingController),
        decoration: InputDecoration(labelText: context.localizations.name),
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value) {
          //print(value);
        },
      );
}

class _PostalCodeTextField extends ConsumerWidget {
  const _PostalCodeTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => TextFormField(
        controller: ref.watch(postalCodeTextEditingController),
        decoration:
            InputDecoration(labelText: context.localizations.postalCode),
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value) {
          //print(value);
        },
      );
}

class _AddressTextField extends ConsumerWidget {
  const _AddressTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => TextFormField(
        controller: ref.watch(addressTextEditingController),
        decoration: InputDecoration(
          labelText: context.localizations.address,
        ),
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value) {
          //print(value);
        },
      );
}

class _HobbyTextField extends ConsumerWidget {
  const _HobbyTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => TextFormField(
        controller: ref.watch(hobbyTextEditingController),
        decoration: InputDecoration(labelText: context.localizations.hobby),
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value) {
          //print(value);
        },
      );
}

class _OneLastWordTextField extends ConsumerWidget {
  const _OneLastWordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => TextFormField(
        controller: ref.watch(oneLastWordTextEditingController),
        decoration: InputDecoration(
          labelText: context.localizations.oneLastWord,
        ),
        textInputAction: TextInputAction.done,
        onFieldSubmitted: (value) {
          //print(value);
        },
      );
}

final idTextEditingController = ChangeNotifierProvider(
  (_) => TextEditingController(),
);
final passwordTextEditingController = Provider((_) => TextEditingController());
final nameTextEditingController = Provider((_) => TextEditingController());
final postalCodeTextEditingController = Provider(
  (_) => TextEditingController(),
);
final addressTextEditingController = Provider((_) => TextEditingController());
final hobbyTextEditingController = Provider((_) => TextEditingController());
final oneLastWordTextEditingController = Provider(
  (_) => TextEditingController(),
);

final isEnabledProvider = Provider((_) => false);
