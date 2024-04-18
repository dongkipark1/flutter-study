class ChatMessage {
  final String sender;
  final String profileImage;
  final String location;
  final String sendDate;
  final String message;
  final String? imageUri;

  ChatMessage({
    required this.sender,
    required this.profileImage,
    required this.location,
    required this.sendDate,
    required this.message,
    this.imageUri,
  });
}

List<ChatMessage> chatMessageList = [
  ChatMessage(
    sender: '썩은요플렛',
    profileImage: 'https://picsum.photos/id/870/200/100?grayscale',
    location: '전포동',
    sendDate: '3일전',
    message: '아웃사이더님, 근처에 다양한 물건이 많습니다.',
  ),
  ChatMessage(
      sender: 'ZICO',
      profileImage: 'https://picsum.photos/id/880/200/100?grayscale',
      location: '부전동',
      sendDate: '2일전',
      message: '예약 끝났습니까?',
      imageUri: 'https://picsum.photos/id/890/200/100?grayscale'
  )
];
