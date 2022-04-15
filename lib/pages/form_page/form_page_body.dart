import 'package:flutter/material.dart';
import 'package:riverpod_sample/extensions/localizations_helper.dart';

class FormPageBody extends StatelessWidget {
  const FormPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Form(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: const [
              _IdTextField(),
              _PasswordTextField(),
            ],
          ),
        ),
      );
}

class _IdTextField extends StatelessWidget {
  const _IdTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        decoration: InputDecoration(
          labelText: context.localizations.id,
        ),
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
        decoration: InputDecoration(
          labelText: context.localizations.password,
        ),
        textInputAction: TextInputAction.done,
        onFieldSubmitted: (value) {
          //print(value);
        },
      );
}
