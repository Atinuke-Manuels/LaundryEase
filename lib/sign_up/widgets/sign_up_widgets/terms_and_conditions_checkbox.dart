import 'package:flutter/material.dart';

class TermsAndConditionsCheckbox extends StatefulWidget {
  final ValueChanged<bool>? onChanged;
  final String title;
  final String? subTitle;
  final OutlinedBorder? shape;

  TermsAndConditionsCheckbox({super.key, this.onChanged, required this.title, this.subTitle,  this.shape});

  @override
  _TermsAndConditionsCheckboxState createState() => _TermsAndConditionsCheckboxState();
}

class _TermsAndConditionsCheckboxState extends State<TermsAndConditionsCheckbox> {
  bool _isChecked = false;


  void _toggleCheckbox(bool? newValue) {
    setState(() {
      _isChecked = newValue ?? !_isChecked;
    });
    if (widget.onChanged != null) {
      widget.onChanged!(_isChecked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _toggleCheckbox(!_isChecked);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            value: _isChecked,
            onChanged: _toggleCheckbox,
            activeColor: const Color(0xFF575757),
            shape: widget.shape,
          ),
          const SizedBox(width: 2.0),
          Row(
            children: [
              Text(widget.title,
                style: TextStyle(fontSize: 12.0),
              ),
              GestureDetector(
                onTap: () {},
                child:
                Text(
                  widget.subTitle ?? '',
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.blue.shade800),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
