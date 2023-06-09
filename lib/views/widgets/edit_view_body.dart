import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        children: const [
          SizedBox(height: 40.0),
          CustomAppBar(
            icon: Icons.check,
            title: 'EditNote',
          ),
          SizedBox(height: 40.0),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 16.0),
          CustomTextField(hint: 'Content',maxLines: 5),
        ],
      ),
    );
  }
}
