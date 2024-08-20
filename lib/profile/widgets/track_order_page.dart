import 'package:flutter/material.dart';

class TrackOrderPage extends StatefulWidget {
  @override
  _TrackOrderPageState createState() => _TrackOrderPageState();
}

class _TrackOrderPageState extends State<TrackOrderPage> {
  // Initial stages with editable descriptions
  final List<Stage> stages = [
    Stage(title: "Confirm order", isCompleted: true, description: ""),
    Stage(title: "Clothes pick up", isCompleted: false, description: ""),
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
                color: const Color(0xFF1A43BF),
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
                      if (_canToggleStage(index)) {
                        stages[index].isCompleted = !stages[index].isCompleted;
                      }

                      // Check if all stages are completed
                      if (stages.every((stage) => stage.isCompleted)) {
                        _showDeliveryDialog();
                      }
                    });
                  },
                  child: buildStageTile(stages[index], index == stages.length - 1, index),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  bool _canToggleStage(int index) {
    if (stages[index].isCompleted) {
      // Allow unclicking only if this is the last completed stage or all subsequent stages are incomplete
      if (index == stages.length - 1 || !stages[index + 1].isCompleted) {
        return true;
      }
    } else {
      // Allow clicking only if the previous stage is completed
      if (index == 0 || stages[index - 1].isCompleted) {
        return true;
      }
    }
    return false;
  }

  Widget buildStageTile(Stage stage, bool isLastStage, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: stage.isCompleted ? Colors.black : Colors.grey,
                      ),
                    ),
                    SizedBox(height: 4),
                    if (stage.isCompleted && stage.description.isEmpty)
                      TextField(
                        onSubmitted: (value) {
                          setState(() {
                            stages[index].description = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Enter description",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      )
                    else
                      Text(
                        stage.description.isNotEmpty
                            ? stage.description
                            : "Input field",
                        style: TextStyle(
                          color: stage.isCompleted ? Colors.black : Colors.grey,
                        ),
                      ),
                  ],
                ),
              ),
            ],
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
  String description;

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
