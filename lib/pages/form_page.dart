import 'package:flutter/material.dart';
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

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Form(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: context.localizations.id,
                ),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (value) {
                  //print(value);
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: context.localizations.password,
                ),
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (value) {
                  //print(value);
                },
              ),
            ],
          ),
        ),
      );
}
