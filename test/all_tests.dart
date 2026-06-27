import 'package:test/test.dart';
import '../question1.dart' as q1;
import '../question2.dart' as q2;
import '../question3.dart' as q3;
import '../question4.dart' as q4;
import '../question5.dart' as q5;

void main() {
  group('assignment solutions', () {
    test('question 1 prints the expected summary', () {
      expect(() => q1.main(), prints(contains('Name: John Doe, Age: 25, Height: 5.9, Is Student: true')));
      expect(() => q1.main(), prints(contains('BMI: 22.5')));
      expect(() => q1.main(), prints(contains('Grade: B')));
    });

    test('question 2 prints student score analysis', () {
      expect(() => q2.main(), prints(contains('Student Scores:')));
      expect(() => q2.main(), prints(contains('Highest Score:')));
      expect(() => q2.main(), prints(contains('Lowest Score:')));
      expect(() => q2.main(), prints(contains('Average Score:')));
    });

    test('question 3 creates accounts and handles withdrawals', () {
      expect(() => q3.main(), prints(contains('Account: 12345, Holder: Alice, Type: Savings, Balance: 800.0')));
      expect(() => q3.main(), prints(contains('Account: 67890, Holder: Bob, Type: Checking, Balance: 400.0')));
      expect(() => q3.main(), prints(contains('Account: 11111, Holder: Charlie, Type: Savings, Balance: 2000.0')));
      expect(() => q3.main(), prints(contains('Insufficient funds for withdrawal of 1000.0 from account 67890')));
    });

    test('question 4 shows vehicle info and age calculations', () {
      expect(() => q4.main(), prints(contains('Vehicle Info: 2020 Toyota Camry (4 doors)')));
      expect(() => q4.main(), prints(contains('Vehicle Info: 2021 Honda CBR (Has windshield: true)')));
      expect(() => q4.main(), prints(contains('Car age:')));
      expect(() => q4.main(), prints(contains('Motorcycle age:')));
    });

    test('question 5 prints employee salary and payment info', () {
      expect(() => q5.main(), prints(contains('Manager: John Smith (ID: M001, Department: IT, Team Size: 5)')));
      expect(() => q5.main(), prints(contains('Job Title: Manager')));
      expect(() => q5.main(), prints(contains('Calculated Salary: 9000.0')));
      expect(() => q5.main(), prints(contains('Payment processed: 9000.0')));
      expect(() => q5.main(), prints(contains('Report: Monthly report for John Smith in IT department')));
      expect(() => q5.main(), prints(contains('Developer: Alice Johnson (ID: D001, Department: IT, Language: Dart)')));
      expect(() => q5.main(), prints(contains('Job Title: Senior Developer')));
      expect(() => q5.main(), prints(contains('Calculated Salary: 6500.0')));
      expect(() => q5.main(), prints(contains('Payment processed: 6500.0')));
    });
  });
}
