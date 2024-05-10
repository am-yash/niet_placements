import 'package:cloud_firestore/cloud_firestore.dart';

class postedJobsModel {
  final String jobTitle;
  final String jobDescription;
  final String jobLocation;
  final String jobCTC;
  final String jobCGPA;
  final String jobApplyLink;

  postedJobsModel({
    required this.jobTitle,
    required this.jobDescription,
    required this.jobLocation,
    required this.jobCTC,
    required this.jobCGPA,
    required this.jobApplyLink,
  });

  static postedJobsModel empty() => postedJobsModel(
    jobTitle: '',
    jobDescription: '',
    jobLocation: '',
    jobCTC: '',
    jobCGPA: '',
    jobApplyLink: '',
  );

  static postedJobsModel fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return postedJobsModel(
        jobTitle: data['jobTitle'],
        jobDescription: data['jobDescription'],
        jobLocation: data['jobLocation'],
        jobCTC: data['jobCTC'],
        jobCGPA: data['jobCGPA'],
        jobApplyLink: data['jobApplyLink'],
      );
    } else {
      return postedJobsModel.empty();
    }
  }
}