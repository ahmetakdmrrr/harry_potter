import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers/character_controller.dart';
import '../../domain/models/character.dart';
import '../widgets/character_card.dart';
import '../../../../shared/widgets/async_value_widgets.dart';

class CharactersView extends ConsumerWidget {
  const CharactersView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final charactersState = ref.watch(characterControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Harry Potter Karakterleri'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed:
                () =>
                    ref
                        .read(characterControllerProvider.notifier)
                        .refreshCharacters(),
          ),
        ],
      ),
      body: AsyncValueWidget<List<Character>>(
        value: charactersState,
        onRetry:
            () =>
                ref
                    .read(characterControllerProvider.notifier)
                    .refreshCharacters(),
        emptyMessage: 'Hiç karakter bulunamadı.',
        data:
            (characters) => LayoutBuilder(
              builder: (context, constraints) {
                int crossAxisCount = 2;
                if (constraints.maxWidth > 900) {
                  crossAxisCount = 4;
                } else if (constraints.maxWidth > 600) {
                  crossAxisCount = 3;
                }
                return GridView.builder(
                  padding: const EdgeInsets.all(8),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    childAspectRatio: 0.75,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: characters.length,
                  itemBuilder: (context, index) {
                    final character = characters[index];
                    return CharacterCard(character: character);
                  },
                );
              },
            ),
      ),
    );
  }
}
