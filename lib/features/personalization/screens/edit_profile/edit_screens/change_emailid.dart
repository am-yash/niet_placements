import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niet_placements/features/personalization/controllers/editform_update_controllers/change_emailid_controller.dart';
import 'package:niet_placements/features/personalization/screens/edit_profile/edit_fields_scafold.dart';
import 'package:niet_placements/utils/validators/validation.dart';

class changeEmailid extends StatelessWidget {
  const changeEmailid({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateEmailidController());
    return editProfileFieldsScafold(
      controller: controller,
      appBarTitle: 'Change Email Id',
      description: 'Change your email Id',
      onSaveButtonPressed: () => controller.updateProfileEmail(),
      formKey: controller.updateProfileEmailidFormKey,
      formChild: Column(
        children: [
          TextFormField(
            controller: controller.email,
            expands: false,
            decoration: const InputDecoration(
              labelText: 'Emailid',
              hintText: 'Enter your emailid',
            ),
            validator: (value) => SValidator.validEmail(value),
          ),
        ],
      ),
    );
  }
}
