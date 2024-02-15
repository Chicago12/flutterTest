// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class firstProject extends StatelessWidget {
  const firstProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.ac_unit),
        centerTitle: true,
        title: Text("SALAM",),
        actions: [Icon(Icons.access_alarm_sharp)],
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: NetworkImage('data:image/jpeg;base64,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'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    // Обработчик события для кнопки "Назад"
                    Navigator.pop(context);
                  },
                  child: Text('Назад'),
                ),
                SizedBox(width: 10),
                RaisedButton(
                  onPressed: () {
                    // Обработчик события для кнопки "Далее"
                    // Можете добавить здесь код для перехода на следующий экран
                  },
                  child: Text('Далее'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    
  }
}
