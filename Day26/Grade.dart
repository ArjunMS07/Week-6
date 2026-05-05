void main() {
  // List of scores
  List<int> scores = [80, 90, 75, 85];

  // Check if list is empty
  if (scores.isEmpty) {
    print("No scores available. Cannot calculate grade.");
    return;
  }

  // Calculate total using loop
  int total = 0;

  for (int score in scores) {
    total += score;
  }

  // Calculate average
  double average = total / scores.length;

  print("Scores: $scores");
  print("Average: ${average.toStringAsFixed(2)}");

  // Assign grade using if-else
  String grade;

  if (average >= 90) {
    grade = 'A';
  } else if (average >= 75) {
    grade = 'B';
  } else if (average >= 60) {
    grade = 'C';
  } else {
    grade = 'D';
  }

  // Switch case (for message)
  switch (grade) {
    case 'A':
      print("Grade: A - Excellent 🎉");
      break;
    case 'B':
      print("Grade: B - Good 👍");
      break;
    case 'C':
      print("Grade: C - Average 🙂");
      break;
    case 'D':
      print("Grade: D - Needs Improvement ⚠️");
      break;
    default:
      print("Invalid grade");
  }
}