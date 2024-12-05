enum BloodType {
  aPositive(
    description: "A+",
  ),
  aNegative(
    description: "A-",
  ),
  bPositive(
    description: "B+",
  ),
  bNegative(
    description: "B-",
  ),
  abPositive(
    description: "AB+",
  ),
  abNegative(
    description: "AB-",
  ),
  oPositive(
    description: "O+",
  ),
  oNegative(
    description: "O-",
  );

  const BloodType({
    required this.description,
  });

  final String description;
}