class Patient {
  String name, phone, time;
  Patient({this.name, this.phone, this.time});

  factory Patient.fromJson(Map<String, dynamic> json) =>
      new Patient(name: json['name'], phone: json['phone'], time: json['time']);

  Map<String, dynamic> toJson() => {
        "name": name,
        "phone": phone,
        "time": time,
      };
}
