import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../custom_animation.dart';
import '../model/note_model.dart';
import '../viewModel/note_view_model.dart';

class NoteListView extends StatelessWidget {
  final NoteViewModel viewModel = NoteViewModel();

  NoteListView({super.key});
  final animationsMap = {
    'floatingActionButtonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 900.ms,
          duration: 1200.ms,
          begin: 0.0,
          end: 2.0,
        ),
      ],
    ),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note App'),
      ),
      body: BlocBuilder<NoteViewModel, List<Note>>(
        bloc: viewModel,
        builder: (context, notes) {
          return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(notes[index].title),
                subtitle: Text(notes[index].content),
                onTap: () {
                  _editNote(context, notes[index], index);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addNote(context);
        },
        child: const Icon(Icons.add),
      ).animateOnPageLoad(
        animationsMap['floatingActionButtonOnPageLoadAnimation']!,
      ),
    );
  }

  void _addNote(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        String title = '';
        String content = '';

        return AlertDialog(
          title: const Text('Add Note'),
          content: SizedBox(
            height: 200,
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Title',
                  ),
                  onChanged: (value) {
                    title = value;
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Content',
                  ),
                  onChanged: (value) {
                    content = value;
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Note note = Note(
                  title: title,
                  content: content,
                );
                viewModel.addNote(note);
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }

  void _editNote(BuildContext context, Note note, int index) {
    showDialog(
      context: context,
      builder: (context) {
        String title = note.title;
        String content = note.content;

        return AlertDialog(
          title: const Text('Edit Note'),
          content: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
                onChanged: (value) {
                  title = value;
                },
                controller: TextEditingController(text: title),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Content',
                ),
                onChanged: (value) {
                  content = value;
                },
                controller: TextEditingController(text: content),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Note updatedNote = Note(
                  title: title,
                  content: content,
                );
                viewModel.updateNote(index, updatedNote);
                Navigator.of(context).pop();
              },
              child: const Text('Update'),
            ),
            TextButton(
              onPressed: () {
                viewModel.deleteNote(index);
                Navigator.of(context).pop();
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }
}
