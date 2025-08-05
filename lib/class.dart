void main() {
  UmairBahadar umairbahadar = UmairBahadar();
  UmairBahadar umairbahadar1 = UmairBahadar();
  umairbahadar.fname = 'SHER BAHADAR';
  umairbahadar.name = 'UMAIR';
  umairbahadar.id = 7595;
  umairbahadar.student = true;

  umairbahadar1.fname = 'xyz';
  umairbahadar1.name = 'abc';
  umairbahadar1.id = 111;
  umairbahadar1.student = false;

  // print('my name is ${umairbahadar.name}');
  // print(umairbahadar.name);
  // print(umairbahadar.fname);
  // print(umairbahadar.id);
  // print(umairbahadar.student);

  // print(umairbahadar1.name);
  // print(umairbahadar1.fname);
  // print(umairbahadar1.id);
  // print(umairbahadar1.student);
  // UmairBahadar2 umairbahadar2 = UmairBahadar2();
  // print('${umairbahadar2.name}');
}

class UmairBahadar {
  String? name;
  String? fname;
  int? id;
  bool? student;
}

class UmairBahadar2 {
  int? reg;
  String? name;
  String? location;
  double? contactno;
  bool? alive;
}
