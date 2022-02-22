class ToDo {
  final int id;
  final String title;

  ToDo(this.id, this.title);

  factory ToDo.fromJson(Map<String,dynamic> json){
    return ToDo(json["id"], json["title"]);
  }

}