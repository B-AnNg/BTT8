class Task {
  String name;
  String reminderTime;
  bool isCompleted;

  Task({
    required this.name,
    required this.reminderTime,
    this.isCompleted = false,
  });

  // Chuyển đối tượng thành chuỗi để lưu vào file text
  String toFileString() {
    return "$name|$reminderTime|$isCompleted";
  }

  // Đọc từ chuỗi file text ngược lại thành đối tượng Task
  static Task fromString(String line) {
    final parts = line.split("|");
    return Task(
      name: parts[0],
      reminderTime: parts[1],
      isCompleted: parts.length > 2 ? parts[2] == 'true' : false,
    );
  }
}