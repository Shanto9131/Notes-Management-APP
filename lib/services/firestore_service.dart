import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/note_model.dart';
import '../core/constants/app_constants.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  CollectionReference get _notesCollection =>
      _firestore.collection(AppConstants.notesCollection);

  Stream<List<NoteModel>> getNotesStream() {
    return _notesCollection
        .orderBy(AppConstants.fieldCreatedAt, descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
        .map((doc) => NoteModel.fromFirestore(doc))
        .toList());
  }

  Future<void> createNote(NoteModel note) async {
    await _notesCollection.add(note.toMap());
  }

  Future<void> updateNote(NoteModel note) async {
    final updatedNote = note.copyWith(updatedAt: DateTime.now());
    await _notesCollection.doc(note.id).update(updatedNote.toMap());
  }

  Future<void> deleteNote(String noteId) async {
    await _notesCollection.doc(noteId).delete();
  }
}