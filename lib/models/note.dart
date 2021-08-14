
class Note {

  int _id;
  String _name;
  String _director;
  String _date;
  int _priority;

  Note(this._name, this._date, this._priority, [this._director]);

  Note.withId(this._id, this._name, this._date, this._priority, [this._director]);

  int get id => _id;

  String get name => _name;

  String get director => _director;

  int get priority => _priority;

  String get date => _date;

  set title(String newName) {
    if (newName.length <= 255) {
      this._name = newName;
    }
  }

  set director(String newDirector) {
    if (newDirector.length <= 255) {
      this._director = newDirecctor;
    }
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  // Convert a Note object into a Map object
  Map<String, dynamic> toMap() {

    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['name'] = _name;
    map['director'] = _director;
    map['priority'] = _priority;
    map['date'] = _date;

    return map;
  }

  // Extract a Note object from a Map object
  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._director = map['director'];
    this._priority = map['priority'];
    this._date = map['date'];
  }
}









