import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final features = [
      {
        "title": "Events",
        "subtitle": "Discover & Join",
        "color": const Color(0xFFD2F3F8), // Soft teal
        "icon": Icons.event,
      },
      {
        "title": "Exams",
        "subtitle": "Track & Prepare",
        "color": const Color(0xFFFFE5B4), // Soft orange
        "icon": Icons.school,
      },
      {
        "title": "Attendance",
        "subtitle": "View Records",
        "color": const Color(0xFFCCE1FF), // Soft blue
        "icon": Icons.check_circle,
      },
      {
        "title": "Hackathons/\nInternships",
        "subtitle": "Opportunities",
        "color": const Color(0xFFE1D6F7), // Soft purple
        "icon": Icons.work,
      },
      {
        "title": "Mentorship",
        "subtitle": "Get Guidance",
        "color": const Color(0xFFC8F2E0), // Soft green
        "icon": Icons.emoji_people,
      },
      {
        "title": "Projects",
        "subtitle": "Showcase Work",
        "color": const Color(0xFFFFF6B7), // Soft yellow
        "icon": Icons.folder,
      },
      {
        "title": "RoomSync",
        "subtitle": "Find Roommates",
        "color": const Color(0xFFFAD1E6), // Soft pink
        "icon": Icons.meeting_room,
      },
      {
        "title": "Coding Platform",
        "subtitle": "Practice & Compete",
        "color": const Color(0xFFD1D8FF), // Soft indigo
        "icon": Icons.code,
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF6FAFF), // Very light blue background
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundColor: Colors.blue[900],
            child: const Text(
              "CS",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.message_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          IconButton(icon: const Icon(Icons.person_outline), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text(
                "Hi, Aditya",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
              const Text(
                "Unlock Your College Life",
                style: TextStyle(fontSize: 22, color: Colors.black87),
              ),
              const SizedBox(height: 18),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.07),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Search Features",
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Row(
                children: const [
                  Text(
                    "✨ Time to ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "#BeProductive",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: features.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.25,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                ),
                itemBuilder: (context, index) {
                  final feature = features[index];
                  return GestureDetector(
                    onTap: () {
                      // TODO: Navigate to feature page
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: feature["color"] as Color?,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            feature["icon"] as IconData,
                            size: 32,
                            color: Colors.black87,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            feature["title"] as String,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            feature["subtitle"] as String,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: "Events"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "Exams"),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: "Internships"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
