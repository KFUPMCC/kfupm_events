import 'package:flutter/material.dart';
import 'package:kfupm_events/src/common_widgets/form_divider.dart';
import 'package:kfupm_events/src/common_widgets/input_field.dart';
import 'package:kfupm_events/src/features/events/data/events_data.dart';
import 'package:kfupm_events/src/features/register/application/create_registrant.dart';
import 'package:kfupm_events/src/features/register/presentation/registerForm/agree_condition.dart';
import 'package:kfupm_events/src/features/register/presentation/registerForm/experience_level.dart';
import 'package:kfupm_events/src/features/register/presentation/registerForm/major_select.dart';
import 'package:kfupm_events/src/features/register/presentation/registerForm/notes_field.dart';
import 'package:kfupm_events/src/common_widgets/navigate_button.dart';
import 'package:kfupm_events/src/features/setting/application/show_pop.dart';
import 'package:kfupm_events/src/theme/dark_notifier.dart';
import 'package:provider/provider.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _currentMajorController = TextEditingController();
  final TextEditingController _experienceController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _currentMajorController.dispose();
    _experienceController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.screenHeight * 0.8,
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
                InputField(
                  type: TextInputType.name,
                  inputHint: 'Ex: Mohammed Almaghlouth',
                  inputName: 'Full Name',
                  controller: _fullNameController,
                ),
                const SizedBox(
                  height: 20,
                ),
                // Email input
                InputField(
                  type: TextInputType.emailAddress,
                  inputHint: 's20xxxxxxx@kfupm.edu.sa',
                  inputName: 'Email',
                  controller: _emailController,
                ),
                const SizedBox(
                  height: 20,
                ),
                // Phone input
                InputField(
                  type: TextInputType.phone,
                  inputHint: '05xxxxxxxx',
                  inputName: 'Phone',
                  controller: _phoneNumberController,
                ),
                const FormDivider(),
                MajorSelect(currentMajor: _currentMajorController),
                const FormDivider(),
                ExperienceLevel(experience: _experienceController),
                const FormDivider(),
                NotesField(notes: _notesController),
                const SizedBox(
                  height: 20,
                ),
                const AgreeCondition(),
                Consumer<EventsDataNotifier>(
                  builder: (context, agreeCheckNotifier, child) {
                    return NavigateButton(
                      title: 'Register Now',
                      widthScale: 0.34,
                      onClick: () {
                        if (agreeCheckNotifier.agreeChecked) {
                          CreateRegistrant(
                            context,
                            _fullNameController,
                            _emailController,
                            _phoneNumberController,
                            _currentMajorController,
                            _experienceController,
                            _notesController,
                          );
                        } else {
                          showPop(
                            14,
                            'Missing Terms & conditions check',
                            'Please read terms and conditions\ncarefully before accept.',
                            context,
                          );
                        }
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
