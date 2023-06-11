import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edit_notes_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});

  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        children: [
          const SizedBox(height: 40.0),
          CustomAppBar(
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subTitle = content ?? widget.noteModel.subTitle;
              widget.noteModel.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            icon: Icons.check,
            title: 'EditNote',
          ),
          const SizedBox(height: 40.0),
          CustomTextField(
            onChange: (value) {
              title = value;
            },
            hint: widget.noteModel.title,
          ),
          const SizedBox(height: 16.0),
          CustomTextField(
            onChange: (value) {
              content = value;
            },
            hint: widget.noteModel.subTitle,
            maxLines: 5,
          ),
          const SizedBox(
            height: 16.0,
          ),
          EditNotesColorsList(noteModel: widget.noteModel),
        ],
      ),
    );
  }
}



