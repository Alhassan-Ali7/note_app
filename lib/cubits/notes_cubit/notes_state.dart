part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesInitialSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesInitialSuccess(this.notes);
}

class NotesError extends NotesState {
  final String error;

  NotesError(this.error);
}

