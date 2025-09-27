import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});
  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  // Form fields
  String name = "";
  String email = "";
  bool agreeToTerms = false;
  int gender = 1; // 1 = Male, 2 = Female
  String country = "USA";
  double age = 18;
  RangeValues budget = RangeValues(1000, 5000);
  bool notifications = false;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  // Date picker
  Future<void> _pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) setState(() => selectedDate = picked);
  }

  // Time picker
  Future<void> _pickTime() async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) setState(() => selectedTime = picked);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return ["Setting", "Profile"]
                  .map(
                    (item) => PopupMenuItem(
                      child: Text(item),
                      onTap: () {
                        print("Go to $item");
                      },
                    ),
                  )
                  .toList();
              // return [
              //   PopupMenuItem(
              //     child: Text("Setting"),
              //     onTap: () {
              //       print("Go to Setting");
              //     },
              //   ),
              //   PopupMenuItem(
              //     child: Text("Profile"),
              //     onTap: () {
              //       print("Go to Profile");
              //     },
              //   ),
              // ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name
              TextFormField(
                decoration: InputDecoration(labelText: "Name"),
                validator: (value) =>
                    value == null || value.isEmpty ? "Enter name" : null,
                onSaved: (value) => name = value!,
              ),
              SizedBox(height: 16),

              // Email
              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                validator: (value) => value == null || !value.contains('@')
                    ? "Enter valid email"
                    : null,
                onSaved: (value) => email = value!,
              ),
              SizedBox(height: 16),

              // Gender (Radio)
              Text("Gender"),
              Row(
                children: [
                  RadioGroup(
                    groupValue: gender,
                    onChanged: (val) => setState(() => gender = val!),
                    child: Radio(value: 1),
                  ),
                  Text("Male"),
                  RadioGroup(
                    groupValue: gender,
                    onChanged: (val) => setState(() => gender = val!),
                    child: Radio(value: 2),
                  ),
                  Text("Female"),
                ],
              ),
              SizedBox(height: 16),

              // Country (Dropdown)
              DropdownButtonFormField<String>(
                initialValue: country,
                items: ["USA", "UK", "India", "Canada"]
                    .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                    .toList(),
                onChanged: (val) => setState(() => country = val!),
                decoration: InputDecoration(labelText: "Country"),
              ),
              SizedBox(height: 16),

              // Age (Slider)
              Text("Age: ${age.round()}"),
              Slider(
                value: age,
                min: 10,
                max: 100,
                divisions: 90,
                label: age.round().toString(),
                onChanged: (val) => setState(() => age = val),
              ),
              SizedBox(height: 16),

              // Budget (RangeSlider)
              Text("Budget: ${budget.start.round()} - ${budget.end.round()}"),
              RangeSlider(
                labels: RangeLabels("Min", "Max"),
                values: budget,
                min: 500,
                max: 10000,
                // divisions: 20,
                onChanged: (val) => setState(() => budget = val),
              ),
              SizedBox(height: 16),

              // Date Picker
              Row(
                children: [
                  Text(
                    selectedDate == null
                        ? "No date chosen"
                        : "Date: ${selectedDate!.toLocal().toString().split(' ')[0]}",
                  ),
                  Spacer(),
                  TextButton(onPressed: _pickDate, child: Text("Pick Date")),
                ],
              ),
              SizedBox(height: 16),

              // Time Picker
              Row(
                children: [
                  Text(
                    selectedTime == null
                        ? "No time chosen"
                        : "Time: ${selectedTime!.format(context)}",
                  ),
                  Spacer(),
                  TextButton(onPressed: _pickTime, child: Text("Pick Time")),
                ],
              ),
              SizedBox(height: 16),

              // Notifications (Switch)
              SwitchListTile(
                title: Text("Enable Notifications"),
                value: notifications,
                onChanged: (val) => setState(() => notifications = val),
              ),

              // Agree to terms (Checkbox)
              CheckboxListTile(
                title: Text("I agree to the terms and conditions"),
                value: agreeToTerms,
                onChanged: (val) => setState(() => agreeToTerms = val!),
              ),
              SizedBox(height: 16),

              // Submit Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate() && agreeToTerms) {
                      _formKey.currentState!.save();
                      print(name);
                      print(email);
                      print(gender);
                      print(country);
                      print(selectedDate);
                      print(selectedTime);
                      print(age);
                      print(budget);
                      print(notifications);
                      print(agreeToTerms);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Form Submitted: $name, $email, $gender, $country",
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please complete the form")),
                      );
                    }
                  },
                  child: Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
