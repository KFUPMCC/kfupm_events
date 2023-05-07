import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kfupm_events/src/common_widgets/form_divider.dart';
import 'package:kfupm_events/src/common_widgets/input_field.dart';
import 'package:kfupm_events/src/features/register/presentation/registerForm/agree_condition.dart';
import 'package:kfupm_events/src/features/register/presentation/registerForm/experience_level.dart';
import 'package:kfupm_events/src/features/register/presentation/registerForm/major_select.dart';
import 'package:kfupm_events/src/features/register/presentation/registerForm/notes_field.dart';
import 'package:kfupm_events/src/common_widgets/navigate_button.dart';
import 'package:kfupm_events/src/routing/routes.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenHeight * 0.8,
      margin: const EdgeInsets.only(top: 180),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Provider.of<DarkNotifier>(context).backgroundColor,
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                // Full name input
                const InputField(
                  type: TextInputType.name,
                  inputHint: 'Ex: Mohammed Almaghlouth',
                  inputName: 'Full Name',
                  controller: null,
                ),
                const SizedBox(
                  height: 20,
                ),
                // Email input
                const InputField(
                  type: TextInputType.emailAddress,
                  inputHint: 's20xxxxxxx@kfupm.edu.sa',
                  inputName: 'Email',
                  controller: null,
                ),
                const SizedBox(
                  height: 20,
                ),
                // Phone input
                const InputField(
                  type: TextInputType.phone,
                  inputHint: '05xxxxxxxx',
                  inputName: 'Phone',
                  controller: null,
                ),
                const FormDivider(),
                const MajorSelect(),
                const FormDivider(),
                const ExperienceLevel(),
                const FormDivider(),
                const NotesField(),
                const SizedBox(
                  height: 20,
                ),
                const AgreeCondition(),
                NavigateButton(
                  title: 'Register Now',
                  widthScale: 0.34,
                  onClick: () {
                    context.goNamed(AppRoute.registerComplete.name);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
