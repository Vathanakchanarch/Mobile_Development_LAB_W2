import '../data/repository/expense_repository_mock.dart';
import '../models/expense.dart';

void main() async {
  print("loading expense");

  try {
    Expense e = await repository.fetchExpense();
    print("Exense loaded : ${e.title}");
    
  } on Exception catch (_, e) {
    print(" error");
  }
}
