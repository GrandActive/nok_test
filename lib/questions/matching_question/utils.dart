import 'package:nok_test/testing/data/model/possible_answer.dart';

/// The letters used for numbering of answers in matching questions
const numberingAlphabet = 'абвгдежз';

String makeNumberedQuestion(PossibleAnswer question) => '${question.index}. ${question.text}';

String makeNumberedAnswer(PossibleAnswer answer) =>
    '${numberingAlphabet[answer.index - 1]}) ${answer.text}';
