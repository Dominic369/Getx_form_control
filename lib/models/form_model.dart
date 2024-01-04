class FormModel {
  String selectedImagePath;
  String selectedImageSize;
  String cowMomName;
  String cowDadName;
  String cowCode;
  String nid;
  String rfid;
  String dpo;
  String cowName;
  String date;
  int age;
  String cowSex;
  String cowType;
  int breed;
  String proportion;
  String house;
  String masses;

  FormModel({
    this.selectedImagePath = '',
    this.selectedImageSize = '',
    this.cowMomName = '',
    this.cowDadName = '',
    this.cowCode = '',
    this.nid = '',
    this.rfid = '',
    this.dpo = '',
    this.cowName = '',
    this.date = '',
    this.age = 0,
    this.cowSex = 'male',
    this.cowType = '',
    this.breed = 0,
    this.proportion = '',
    this.house = '',
    this.masses = '',
  });
}
