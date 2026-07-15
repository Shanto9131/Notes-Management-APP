# Notes Management App

A Flutter application that allows users to create, edit, delete, and manage notes using Firebase Cloud Firestore. The app demonstrates real-time database operations with a clean and user-friendly interface.

---

## Features

* Create new notes
* Edit existing notes
* Delete notes with confirmation dialog
* View notes in real time
* Firebase Firestore CRUD operations
* Form validation
* Empty state UI
---

## Technologies Used

* Flutter
* Dart
* Firebase Core
* Cloud Firestore

---

## Project Structure

```text
lib/
├── main.dart
├── firebase_options.dart
├── core/
│   ├── constants/
│   │   └── app_constants.dart
│   └── theme/
│       └── app_theme.dart
├── models/
│   └── note_model.dart
├── services/
│   └── firestore_service.dart
├── screens/
│   ├── notes_list_screen.dart
│   └── add_edit_note_screen.dart
└── widgets/
    ├── note_card.dart
    ├── custom_text_field.dart
    ├── delete_dialog.dart
    └── empty_state_widget.dart
```

---

## Firebase Features

* Firebase initialization
* Cloud Firestore integration
* Real-time data synchronization
* Create, Read, Update and Delete (CRUD)

---

## How to Run

Clone the repository:

```bash
git clone https://github.com/Shanto9131/Notes-Management-APP.git
```

Go to the project directory:

```bash
cd Notes-Management-APP
```

Install dependencies:

```bash
flutter pub get
```

Configure Firebase:

```bash
flutterfire configure
```

Run the application:

```bash
flutter run
```

> If you face an Android dependency validation issue, you can run:

```bash
flutter run --android-skip-build-dependency-validation
```

This command skips Android dependency validation during the build process and is useful when Flutter reports a temporary Gradle or Android dependency compatibility issue.

---

## Assignment Requirements Covered

* Firebase integration
* Cloud Firestore CRUD operations
* StreamBuilder for real-time updates
* Add note
* Edit note
* Delete note with confirmation dialog
* Form validation
* Reusable widgets
* Clean folder structure

---


## Author

**Shanto Ahmed Rana**
