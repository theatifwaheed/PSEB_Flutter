class Doctor{
  String name, address, speciality, fee, image;
  Doctor({ required this.name, required  this.address,  required this.speciality, required  this.fee,  required this.image});
}

// class ListDoctor{
  List<Doctor> doctors = [
    Doctor(name: "ATIF", address: "Rawalpindi", speciality: "ENT", fee: "150000", image: "assets/images/mine.jpg"),
    Doctor(name: "ALI", address: "Islamabad", speciality: "DENTIST", fee: "10000", image: "assets/assets/images/ali.jpeg"),
    Doctor(name: "BANO", address: "Lahore", speciality: "CARDIOLOGIST", fee: "20000", image: "assets/assets/images/bano.jpeg"),
    Doctor(name: "BILAL", address: "Multan", speciality: "Psych", fee: "3500", image: "assets/assets/images/bilal.jpeg"),
    Doctor(name: "FAWAD", address: "Karachi", speciality: "Physician", fee: "90000", image: "assets/assets/images/fawad.jpeg"),
    Doctor(name: "FOZIA", address: "Korangi", speciality: "ENT", fee: "16000", image: "assets/assets/images/fozia.jpeg"),
    Doctor(name: "HINA", address: "Murree", speciality: "DENTIST", fee: "7500", image: "assets/assets/images/hina.jpeg"),
    Doctor(name: "JIN", address: "Kashmir", speciality: "CARDIOLOGIST", fee: "44800", image: "assets/assets/images/jin.jpeg"),
    Doctor(name: "RIAZ", address: "Rawalpindi", speciality: "Physician", fee: "5431", image: "assets/assets/images/riaz.jpeg"),
  ];
// }