void main() {
  // Nullable Map (can be null)
  Map<String, dynamic>? user = {
    "name": "Arjun",
    "phone": "9876543210"
  };

  // Call function
  print(getPhoneNumber(user));

  // Test with null
  user = null;
  print(getPhoneNumber(user));


}

// Function to safely extract phone number
String getPhoneNumber(Map<String, dynamic>? user) {
  return user?["phone"] ?? "No Number Provided";
}
