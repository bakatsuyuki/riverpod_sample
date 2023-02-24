import 'package:flutter/material.dart';
import 'package:riverpod_sample/extensions/localizations_helper.dart';

class FormPageBody extends StatelessWidget {
  const FormPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Form(
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

class _IdTextField extends StatelessWidget {
  const _IdTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        decoration: InputDecoration(labelText: context.localizations.id),
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value) {
          //print(value);
        },
      );
}

class _PasswordTextField extends StatelessWidget {
  const _PasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        decoration: InputDecoration(labelText: context.localizations.password),
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value) {
          //print(value);
        },
      );
}

class _NameTextField extends StatelessWidget {
  const _NameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        decoration: InputDecoration(labelText: context.localizations.name),
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value) {
          //print(value);
        },
      );
}

class _PostalCodeTextField extends StatelessWidget {
  const _PostalCodeTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        decoration:
            InputDecoration(labelText: context.localizations.postalCode),
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value) {
          //print(value);
        },
      );
}

class _AddressTextField extends StatelessWidget {
  const _AddressTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        decoration: InputDecoration(
          labelText: context.localizations.address,
        ),
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value) {
          //print(value);
        },
      );
}

class _HobbyTextField extends StatelessWidget {
  const _HobbyTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        decoration: InputDecoration(labelText: context.localizations.hobby),
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value) {
          //print(value);
        },
      );
}

class _OneLastWordTextField extends StatelessWidget {
  const _OneLastWordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        decoration: InputDecoration(
          labelText: context.localizations.oneLastWord,
        ),
        textInputAction: TextInputAction.done,
        onFieldSubmitted: (value) {
          //print(value);
        },
      );
}
