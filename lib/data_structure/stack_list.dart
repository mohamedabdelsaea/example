import 'dart:developer';

import 'package:stack/stack.dart';

void mail (){
  Stack<double> stack = Stack();
  
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.push(40);
  stack.pop(); // هيمسح اخر قيمه اللي هيا 40
log('${stack.top()}');
log('${stack.size()}'); //length
log('${stack.isEmpty}');

  // <String> اقدر اخزن اي قيمه

}

/*
push()  بيضيف الجديد الاول
pop()  بيمسح اخر حاجه اتضافت
top() بيطبع اخر قيمه
size() بيرجع العدد اللي موجود
isEmpty()
هيرجع true لو فاضي
false  لموجود فيه قيم
 */