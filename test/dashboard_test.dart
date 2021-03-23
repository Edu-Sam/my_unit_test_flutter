import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_test_app/dashboard.dart';
import 'dart:ui';

void main(){
testWidgets("Check Dashboard", (WidgetTester tester) async{
  final testWidget=MaterialApp(
    home: HomePage(),
  );

  await tester.pumpWidget(testWidget);
  await tester.pumpAndSettle();

 // expect(find.text('Hello World!'),findsOneWidget);
  final buttonMaterial=find.descendant(of: find.byType(ElevatedButton),
      matching: find.byType(Material));

  final materialButton=tester.widget<Material>(buttonMaterial);

  expect(materialButton.color,Colors.blue);
  expect(find.text('Weather today'),findsOneWidget);
  expect(find.byKey(Key('icon_weather')),findsOneWidget);
});

testWidgets("Notify when the button is pressed",(WidgetTester tester) async{
  var pressed=false;
  final testWidget=MaterialApp(
    home: HomePage(
      onPressed: ()=> pressed=true,
    ),
  );

  await tester.pumpWidget(testWidget);
  await tester.pumpAndSettle();

  await tester.tap(find.byType(ElevatedButton));
  await tester.pumpAndSettle();

  expect(pressed,isTrue);
});

/*testWidgets("Check button", (WidgetTester tester) async{
  final buttonMaterial=find.descendant(of: find.byType(ElevatedButton),
      matching: find.byType(Material));

  final materialButton=tester.widget<Material>(buttonMaterial);

  expect(materialButton.color,Colors.blue);
  expect(find.text('Weather today'),findsOneWidget);
  expect(find.byKey(Key('icon_weather')),findsOneWidget);
});*/
}