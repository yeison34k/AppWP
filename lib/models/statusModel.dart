
class StatusModel {
  String imgUrl;
  String name;
  String time;

  StatusModel({this.imgUrl, this.name, this.time});
}

List<StatusModel> statusList = [
  StatusModel(imgUrl: "url", name: "don julio", time: "01:20pm"),
  StatusModel(imgUrl: "url", name: "don pedro", time: "01:20pm"),
  StatusModel(imgUrl: "url", name: "doña malta", time: "01:20pm")
];
