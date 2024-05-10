import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niet_placements/features/personalization/controllers/editform_update_controllers/change_username_controller.dart';
import 'package:niet_placements/features/personalization/screens/edit_profile/edit_fields_scafold.dart';

class changeUsername extends StatelessWidget {
  const changeUsername({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateUsernameController());

    return editProfileFieldsScafold(
      controller: controller,
      appBarTitle: 'Change Admission Number',
      description: 'Change your admission number here.',
      onSaveButtonPressed: () => controller.updateProfileUsername(),
      formKey: controller.updateProfileUsernameFormKey,
      formChild: Column(
        children: [
          TextFormField(
            controller: controller.userName,
            expands: false,
            onChanged: controller.onUsernameChanged,
            validator: (Value) => controller.usernameValidator(Value),
            decoration: const InputDecoration(
              labelText: 'Admission Number',
              hintText: 'Enter your admission number',
            ),
          )
        ],
      ),
    );
  }
}
