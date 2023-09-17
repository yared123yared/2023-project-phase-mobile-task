
enum Status{
  completed,
  pending
}
class Task {
  String title;
  String description;
  DateTime dueDate;
  Status status;

  Task(this.title, this.description, this.dueDate, this.status);

  void markCompleted() {
    status=Status.completed;
  }

  void markPending() {
   status=Status.pending;
  }

 
}

class TaskManager {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
    print("Task added successfully.");
  }

  void viewAllTasks() {
    if (tasks.isEmpty) {
      print("No tasks found.");
      return;
    }

    for (var task in tasks) {
      print(task);
    }
  }

  void viewCompletedTasks() {
    var completedTasks = tasks.where((task) => task.status==Status.completed).toList();
    if (completedTasks.isEmpty) {
      print("No completed tasks found.");
      return;
    }

    for (var task in completedTasks) {
      print(task);
    }
  }

  void viewPendingTasks() {
    var pendingTasks = tasks.where((task) => task.status==Status.pending).toList();
    if (pendingTasks.isEmpty) {
      print("No pending tasks found.");
      return;
    }

    for (var task in pendingTasks) {
      print(task);
    }
  }

  void editTask(int index, String title, String description, DateTime dueDate) {
    if (index < 0 || index >= tasks.length) {
      print("Invalid task index.");
      return;
    }

    var task = tasks[index];
    task.title = title;
    task.description = description;
    task.dueDate = dueDate;

    print("Task edited successfully.");
  }

  void deleteTask(int index) {
    if (index < 0 || index >= tasks.length) {
      print("Invalid task index.");
      return;
    }

    tasks.removeAt(index);
    print("Task deleted successfully.");
  }
}
