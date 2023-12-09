import 'package:flutter/material.dart';

import '../../../data/home/topic_response_data.dart';
import '../../../data/polls/polls_args.dart';
import '../../../utils/extensions.dart';
import 'topic.dart';

class TopicsList extends StatelessWidget {
  const TopicsList({
    required this.topics,
    super.key,
  });

  final List<TopicResponseData> topics;

  @override
  Widget build(BuildContext context) => ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: topics.length,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          final topic = topics[index];
          return Topic(
            title: topic.title,
            text: topic.text,
            backgroundUrl: topic.imageUrl,
            onTap: () => context.toPollsScreen(
              PollsArgs(topic.uuid),
            ),
          );
        },
      );
}
