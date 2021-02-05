class Question {
  String questionText;
  String option1;
  String option2;
  String option3;
  String option4;
  int answer;

  Question(this.questionText, this.option1, this.option2, this.option3,
      this.option4, this.answer);

  static List<Question> getQuestionList() {
    List<Question> questions = [];

    questions.add(Question(
      'What do you think about the rocket I build?',
      'Is it so fast',
      'So high speed',
      'Just what you need',
      'It\'s cool',
      1,
    ));
    questions.add(Question(
      'Do you know how to give love to anyone?',
      'Yes',
      'No',
      'Perhaps',
      'Maybe',
      1,
    ));

    return questions;
  }
}
