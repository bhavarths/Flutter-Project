// class Question{
//
//   String questionText;
//   bool questionAnswer;
//
//   Question({String q, bool a}) {
//
//     questionText = q;
//     questionAnswer = a;
//
//   }
//
// }

//
// class QuestionBank {
//   late String questionText;
//   late bool questionAnswer;
//
//   QuestionBank({required String q, required bool a}) {
//     questionText = q;
//     questionAnswer = a;
//   }
// }
class Question {
  late String questionText;
  late bool questionAnswer;

  Question({required String q, required bool a}) {
    questionText = q;
    questionAnswer = a;
  }
}
