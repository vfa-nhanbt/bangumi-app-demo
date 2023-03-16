import '../model/banner_model.dart';
import '../model/show_model.dart';

class MockData {
  MockData._internal();

  static final MockData instance = MockData._internal();

  final List<BannerModel> banners = [
    const BannerModel(
      id: "id",
      imageUrl:
          "https://images.unsplash.com/photo-1531889212584-6d114ab8f37d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
    ),
    const BannerModel(
      id: "id",
      imageUrl:
          "https://images.unsplash.com/photo-1531889212584-6d114ab8f37d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
    ),
    const BannerModel(
      id: "id",
      imageUrl:
          "https://images.unsplash.com/photo-1531889212584-6d114ab8f37d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
    ),
    const BannerModel(
      id: "id",
      imageUrl:
          "https://images.unsplash.com/photo-1531889212584-6d114ab8f37d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
    ),
    const BannerModel(
      id: "id",
      imageUrl:
          "https://images.unsplash.com/photo-1531889212584-6d114ab8f37d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
    ),
  ];

  final List<ShowModel> showsTileOne = [
    ShowModel(
      id: "id",
      title: "Roma vs Chievo on 22nd December 2017",
      imageUrl:
          "https://images.unsplash.com/photo-1519743375942-b497d66b1e8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
      startTime: DateTime.now(),
      length: 1.5,
    ),
    ShowModel(
      id: "id",
      title:
          "Roger Federer`s opening match in the 2018 Championships at Wimbledon against Dusan Lajovic of Serbia",
      imageUrl:
          "https://images.unsplash.com/photo-1531315396756-905d68d21b56?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
      startTime: DateTime(2023, 3, 11),
      length: 2.3,
    ),
    ShowModel(
      id: "id",
      title: "Camp-Nou, Barcelona vs Ath. Bilbao, Spain - 2018/9/30",
      imageUrl:
          "https://images.unsplash.com/photo-1542683305-710078a12f73?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1457&q=80",
      startTime: DateTime(2018, 9, 30),
      length: 1.8,
    ),
  ];
}
