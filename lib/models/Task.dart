

class Task {
  final String name;
  bool isDone;
  bool isArchived;


  Task({required this.name, this.isDone = false, this.isArchived = false, });

  void toggleDone() {
    isDone = !isDone;
  }

  void toggleArchive(){
    isArchived = !isArchived;
  }
}
