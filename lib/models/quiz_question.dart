class QuizQuestion {
  QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  //method for shuffling the asnwers
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); // create a copy of original answers list
    shuffledList.shuffle();          // then it shuffles the asnwers
    return shuffledList;             // return the updated shuffled list
  }
}
