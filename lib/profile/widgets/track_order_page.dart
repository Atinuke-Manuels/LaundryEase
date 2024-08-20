import 'package:flutter/material.dart';

class TrackOrderPage extends StatefulWidget {
  @override
  _TrackOrderPageState createState() => _TrackOrderPageState();
}

class _TrackOrderPageState extends State<TrackOrderPage> {
  // Initial stages
  final List<Stage> stages = [
    Stage(title: "Confirm order", isCompleted: true, description: "Your order was confirmed 11th June 2024, 9:40 AM."),
    Stage(title: "Clothes pick up", isCompleted: true, description: "Your clothes were picked up on 11th June 2024, 11:30 AM."),
    Stage(title: "Washing process", isCompleted: false, description: ""),
    Stage(title: "Drying Stage", isCompleted: false, description: ""),
    Stage(title: "Ironing Stage", isCompleted: false, description: ""),
    Stage(title: "Ready for delivery", isCompleted: false, description: ""),
  ];

  @override
  Widget build(BuildContext context) {
    bool isOrderCompleted = stages.every((stage) => stage.isCompleted);

    return Scaffold(
      appBar: AppBar(
        title: Text("Track Order"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "John Ogenetega",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "11th June. 9:00 AM",
                    style: TextStyle(color: Colors.white.withOpacity(0.7)),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order ID: AGHKe567381",
                        style: TextStyle(color: Colors.white.withOpacity(0.7)),
                      ),
                      Text(
                        isOrderCompleted ? "Completed" : "Pending",
                        style: TextStyle(
                          color: isOrderCompleted ? Colors.green : Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: stages.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      stages[index].isCompleted = !stages[index].isCompleted;

                      // Check if all stages are completed
                      if (stages.every((stage) => stage.isCompleted)) {
                        _showDeliveryDialog();
                      }
                    });
                  },
                  child: buildStageTile(stages[index], index == stages.length - 1),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStageTile(Stage stage, bool isLastStage) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Icon(
                stage.isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
                color: stage.isCompleted ? Colors.blue : Colors.grey,
              ),
              if (!isLastStage)
                Container(
                  height: 50,
                  width: 2,
                  color: stage.isCompleted ? Colors.blue : Colors.grey,
                ),
            ],
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stage.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: stage.isCompleted ? Colors.black : Colors.grey),
                ),
                SizedBox(height: 4),
                Text(
                  stage.description.isNotEmpty ? stage.description : "Input field",
                  style: TextStyle(color: stage.isCompleted ? Colors.black : Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Show delivery confirmation dialog
  void _showDeliveryDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Order Delivered"),
          content: Text("Is the order delivered?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _navigateToDeliveryPage();
              },
              child: Text("Yes"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("No"),
            ),
          ],
        );
      },
    );
  }

  // Navigate to the delivery confirmation page
  void _navigateToDeliveryPage() {
    // Navigate to a different page when "Yes" is clicked
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DeliveryConfirmationPage()),
    );
  }
}

class Stage {
  final String title;
  bool isCompleted;
  final String description;

  Stage({
    required this.title,
    required this.isCompleted,
    required this.description,
  });
}

class DeliveryConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery Confirmation"),
      ),
      body: Center(
        child: Text("Order Delivered Successfully!"),
      ),
    );
  }
}
