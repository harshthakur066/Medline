class Doctor {
  String email, name, phone, license, price, specialization;
  Doctor(
      {this.email,
      this.name,
      this.phone,
      this.license,
      this.price,
      this.specialization});

  factory Doctor.fromJson(Map<String, dynamic> json) => new Doctor(
      email: json['email'],
      name: json['name'],
      phone: json['phone'],
      license: json['license'],
      price: json['price'],
      specialization: json['specialization']);
  Map<String, dynamic> toJson() => {
        "email": email,
        "phone": phone,
        "license": license,
        "name": name,
        "price": price,
        "specialization": specialization
      };
}
