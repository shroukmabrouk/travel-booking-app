import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Project',
      home: MyHomePage(),
    );
  }
}

// Explore Page
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text(
          "TRAVEL BOOKING",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore Destination",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: "Search for your destination",
                suffixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 5,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.location_city,
                            color: Colors.deepOrange,
                            size: 50,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "City",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 5,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.beach_access,
                            color: Colors.deepOrange,
                            size: 50,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Beach",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 5,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.terrain,
                            color: Colors.deepOrange,
                            size: 50,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Mountain",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Popular Destinations",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DestinationDetailsPage(
                            destinationName: "Paris",
                            country: "France",
                            continent: "Europe",
                            information:
                                "Paris is one of the most famous tourist destinations in the world.",
                            activities: [
                              "Shopping",
                              "Museums",
                              "River Cruise",
                              "Eiffel Tower Visit",
                            ],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "Paris",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DestinationDetailsPage(
                            destinationName: "Dubai",
                            country: "UAE",
                            continent: "Asia",
                            information:
                                "Dubai is a modern city famous for luxury shopping and skyscrapers.",
                            activities: [
                              "Desert Safari",
                              "Shopping",
                              "Burj Khalifa Visit",
                              "Beach Activities",
                            ],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "Dubai",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Destination Details Page
class DestinationDetailsPage extends StatelessWidget {
  final String destinationName;
  final String country;
  final String continent;
  final String information;
  final List<String> activities;

  const DestinationDetailsPage({
    super.key,
    required this.destinationName,
    required this.country,
    required this.continent,
    required this.information,
    required this.activities,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text(
          destinationName,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Destination Information",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(information),
            SizedBox(height: 20),
            Text(
              "Location Details",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text("Country : $country"),
            Text("Continent : $continent"),
            SizedBox(height: 20),
            Text(
              "Available Activities",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            ...activities.map(
              (activity) => Text("• $activity"),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookingPage(
                      destination: destinationName,
                    ),
                  ),
                );
              },
              child: Text("Book Now"),
            ),
          ],
        ),
      ),
    );
  }
}

// Booking Page
class BookingPage extends StatelessWidget {
  final String destination;

  const BookingPage({
    super.key,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text(
          "BOOKING PAGE",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Travel Date",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: "Enter Travel Date",
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Number of Travelers",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "Enter Number of Travelers",
              ),
            ),
            SizedBox(height: 20),
            Text(
              "User Information",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "Enter Your Name",
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "Enter Your Email",
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "Enter Your Phone Number",
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookingConfirmationPage(
                        destination: destination,
                      ),
                    ),
                  );
                },
                child: Text("Confirm Booking"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//booking confirmation
class BookingConfirmationPage extends StatelessWidget {
  final String destination;

  const BookingConfirmationPage({
    super.key,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text(
          "BOOKING CONFIRMATION",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Booking Details",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Destination : $destination",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Travel Date : 20/08/2026",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Booking Number : BK12345",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 80,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Booking Successful",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
