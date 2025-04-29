import 'package:cheval_broker/src/Views/Widgets/textformfield.dart';
import 'package:flutter/material.dart';

class SettingRowNameTextfieldWidget extends StatelessWidget {
  final String text;
  final String hinttext;
  final TextEditingController textEditingController;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  const SettingRowNameTextfieldWidget({super.key, required this.textEditingController, this.autovalidateMode, this.validator,required this.text, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return     Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 1.7,
                      child: Textformfieldwidget(
                        textEditingController: textEditingController,
                        hinttext: hinttext,
                        hintcolor: theme.splashColor,
                        validator: validator,
                        autovalidateMode: autovalidateMode,
                      )),
                ],
              );
  }
}