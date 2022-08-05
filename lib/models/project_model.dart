class ProjectModel {
  final String? title;
  final String? imageURL;
  final String? linkURL;

  ProjectModel({this.title, this.imageURL, this.linkURL});
}

List<ProjectModel> projects = [
    ProjectModel(
      title: 'Pocket Piano',
      imageURL: 'piano.png',
      linkURL: '',
    ),
    ProjectModel(
      title: 'LibPro',
      imageURL: 'lms.png',
      linkURL: '',
    ),
  ];