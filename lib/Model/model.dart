//TODO: add your model class here
class SchoolDataModel {
  dynamic schoolName;
  dynamic schoolAddress;
  dynamic numberOfTeachers;
  dynamic numberOfStudents;

  SchoolDataModel.fromJson(Map<String,dynamic>?json)
  {
    schoolName = json!['School Name'];
    schoolAddress = json['School Address'];
    numberOfTeachers = json['Number of Teachers'];
    numberOfStudents = json['Number of Students'];
  }
}