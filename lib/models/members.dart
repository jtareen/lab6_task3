class Member {
  final String name;
  final String membershipId;
  final String email;
  final String profilePicture;

  Member({
    required this.name,
    required this.membershipId,
    required this.email,
    required this.profilePicture,
  });
}

final List<Member> members = [
  Member(
    name: "John Doe",
    membershipId: "M001",
    email: "john.doe@example.com",
    profilePicture: "assets/images/user1.jpeg",
  ),
  Member(
    name: "Jane Smith",
    membershipId: "M002",
    email: "jane.smith@example.com",
    profilePicture: "assets/images/user2.jpg",
  ),
  Member(
    name: "Alice Johnson",
    membershipId: "M003",
    email: "alice.johnson@example.com",
    profilePicture: "assets/images/user3.jpeg",
  ),
  Member(
    name: "Bob Brown",
    membershipId: "M004",
    email: "bob.brown@example.com",
    profilePicture: "assets/images/user4.jpeg",
  ),
  Member(
    name: "Charlie Green",
    membershipId: "M005",
    email: "charlie.green@example.com",
    profilePicture: "assets/images/user5.jpeg",
  ),
];
