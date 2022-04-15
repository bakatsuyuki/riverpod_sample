import 'package:flutter/material.dart';
import 'package:riverpod_sample/extensions/localizations_helper.dart';

import 'form_page_body.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const FormPageBody(),
      appBar: AppBar(
        title: Text(
          context.localizations.form,
        ),
      ),
    );
  }
}
