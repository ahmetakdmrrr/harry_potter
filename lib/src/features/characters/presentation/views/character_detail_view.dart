import 'package:flutter/material.dart';
import '../../domain/models/character.dart';

class CharacterDetailView extends StatelessWidget {
  final Character character;
  const CharacterDetailView({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 600;
          return Center(
            child: Card(
              margin: const EdgeInsets.all(24),
              elevation: 8,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: isWide
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _CharacterImage(character: character, size: 220),
                          const SizedBox(width: 32),
                          Flexible(child: _CharacterDetails(character: character)),
                        ],
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _CharacterImage(character: character, size: 180),
                          const SizedBox(height: 24),
                          _CharacterDetails(character: character),
                        ],
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _CharacterImage extends StatelessWidget {
  final Character character;
  final double size;
  const _CharacterImage({required this.character, required this.size});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: character.name,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size / 2),
        child: character.image?.isNotEmpty == true
            ? Image.network(
                character.image!,
                width: size,
                height: size,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    Icon(Icons.person, size: size, color: Colors.grey.shade400),
              )
            : Icon(Icons.person, size: size, color: Colors.grey.shade400),
      ),
    );
  }
}

class _CharacterDetails extends StatelessWidget {
  final Character character;
  const _CharacterDetails({required this.character});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          character.name,
          style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        _DetailRow(label: 'Ev', value: character.house),
        _DetailRow(label: 'Tür', value: character.species),
        _DetailRow(label: 'Cinsiyet', value: character.gender),
      ],
    );
  }
}

class _DetailRow extends StatelessWidget {
  final String label;
  final String value;
  const _DetailRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('$label: ', style: const TextStyle(fontWeight: FontWeight.w600)),
          Flexible(child: Text(value, style: const TextStyle(fontWeight: FontWeight.w400))),
        ],
      ),
    );
  }
}
