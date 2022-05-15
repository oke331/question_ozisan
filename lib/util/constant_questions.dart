import 'package:question_ozisan/model/answer.dart';
import 'package:question_ozisan/model/question.dart';

const questions = [
  dinnerQuestion,
  earlyMorningQuestion,
  playWithSonQuestion,
];

const dinnerQuestion = Question(
  id: 1,
  questionText: '今日の晩御飯は？',
  answer1: Answer(
    text: '野菜スティック',
    ozisanType: OzisanType.slim,
  ),
  answer2: Answer(
    text: '濃厚鶏白湯ラーメン 大盛り',
    ozisanType: OzisanType.fat,
  ),
);

const earlyMorningQuestion = Question(
  id: 2,
  questionText: '今日は朝早く起きた！どうする？',
  answer1: Answer(
    text: 'ランニングでも行くか！',
    ozisanType: OzisanType.slim,
  ),
  answer2: Answer(
    text: '朝だしペヤング大盛り食うか！',
    ozisanType: OzisanType.fat,
  ),
);

const playWithSonQuestion = Question(
  id: 3,
  questionText: '「パパー！あそぼー！」',
  answer1: Answer(
    text: '「よーし！パパと寿司100貫食うまで帰れま10するか！」',
    ozisanType: OzisanType.fat,
  ),
  answer2: Answer(
    text: '「よーし！今日はパパとお外でキャッチボールするか！」',
    ozisanType: OzisanType.slim,
  ),
);
