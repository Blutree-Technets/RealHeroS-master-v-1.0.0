// import 'package:flutter/material.dart';
// import 'package:stream_chat_flutter/stream_chat_flutter.dart';

// void main() async {
//   /// Create a new instance of [StreamChatClient] passing the apikey obtained from your
//   /// project dashboard.
//   final client = StreamChatClient(
//     '8ypq8rq9t8py',
//     logLevel: Level.INFO,
//   );

//   /// Set the current user. In a production scenario, this should be done using
//   /// a backend to generate a user token using our server SDK.
//   /// Please see the following for more information:
//   /// https://getstream.io/chat/docs/flutter-dart/tokens_and_authentication/?language=dart
//   await client.connectUser(
//     User(
//       id: 'gentle-surf-5',
//       extraData: {
//         'image': 'http://local.getstream.io:9000/random_png/?id=gentle-surf-5&amp;name=gentle-surf-5',
//       },
//     ),
//     'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoiZ2VudGxlLXN1cmYtNSJ9.-7reN9EZ9kY0RXcEvJIaeqfY7HoEy_mH5WKJOCjwpsE',
//   );

//   /// Creates a channel using the type `messaging` and `godevs`.
//   /// Channels are containers for holding messages between different members. To
//   /// learn more about channels and some of our predefined types, checkout our
//   /// our channel docs: https://getstream.io/chat/docs/flutter-dart/creating_channels/?language=dart
//   final channel = client.channel('messaging', id: 'godevs');

//   /// `.watch()` is used to create and listen to the channel for updates. If the
//   /// channel already exists, it will simply listen for new events.
//   channel.watch();

//   runApp(chats(client, channel));
// }

// class chats extends StatelessWidget {

//   /// Instance of [StreamChatClient] we created earlier. This contains information about
//   /// our application and connection state.
//   final StreamChatClient client;

//   /// The channel we'd like to observe and participate.
//   final Channel channel;

//   /// To initialize this example, an instance of [client] and [channel] is required.
//   chats(this.client, this.channel);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       builder: (context, widget) {
//         return StreamChat(
//           child: widget,
//           client: client,
//         );
//       },
//       home: StreamChannel(
//         channel: channel,
//         child: ChannelPage(),
//       ),
//     );
//   }
// }

// /// Displays the list of messages inside the channel
// class ChannelPage extends StatelessWidget {
//   const ChannelPage({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: ChannelHeader(),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: MessageListView(),
//           ),
//           MessageInput(),
//         ],
//       ),
//     );
//   }
// }