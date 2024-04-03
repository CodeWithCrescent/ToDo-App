class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Write code for feature X', isDone: true),
      ToDo(id: '02', todoText: 'Test feature X implementation', isDone: true),
      ToDo(id: '03', todoText: 'Refactor code for readability'),
      ToDo(id: '04', todoText: 'Eat lunch', isDone: true),
      ToDo(id: '05', todoText: 'Debug issue with feature Y'),
      ToDo(id: '06', todoText: 'Review pull request for feature Z'),
      ToDo(
          id: '07',
          todoText: 'Attend team meeting to discuss project progress'),
      ToDo(id: '08', todoText: 'Document code changes for release notes'),
      ToDo(id: '09', todoText: 'Respond to emails from project stakeholders'),
      ToDo(
          id: '10',
          todoText: 'Update project documentation with latest changes')
    ];
  }
}
