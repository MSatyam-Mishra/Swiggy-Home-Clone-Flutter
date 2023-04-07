class UserData {
  final String name, address;
  final int id;
  UserData({required this.address, required this.id, required this.name});
}

List<UserData> users = [
  UserData(
      address: "Burj Khalifa, 2nd Floor, Room Nuymber 203, Dubai,UAE",
      id: 1,
      name: "Satyam Mishra")
];
