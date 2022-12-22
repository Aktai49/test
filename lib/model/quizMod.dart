class Quiz {
  const Quiz(this.questions, this.answer);

  final String questions;
  final bool answer;
}

const q1 = Quiz('Kyrgyzdar kyrgyzcha suiloibu? ', true);
const q2 = Quiz('2*2=5', false);
const q3 = Quiz(' Kardyn tusu ak ', true);
const q4 = Quiz('Agata Kristi pianist', false);
const q5 = Quiz('Sulaiman Too Bishkekte', false);
const q6 = Quiz('1+1=2', true);
const q7 = Quiz('Kyrgyzdar kyrgyzcha suiloibu? ', true);

const quizzes = <Quiz>[q1, q2, q3, q4, q5, q6, q7];
