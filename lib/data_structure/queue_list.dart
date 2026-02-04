import 'dart:collection';
import 'dart:developer';

void mail() {
  Queue<int> queue = Queue();

  queue.add(10);
  queue.add(20);
  queue.add(30);
  queue.add(40);

  log('${queue.first}'); // هيطبع 10 عشان اول قيمه
  log('${queue.isEmpty}'); // (لو موجود قيم false ),(لو فاضي true)
  log('${queue.last}'); // يطبع اخر عنصر

queue.addFirst(5);//يضيف ف الاول
queue.addLast(70);// يضيف ف الاخر

  // <String> اقدر اخزن اي قيمه
}
