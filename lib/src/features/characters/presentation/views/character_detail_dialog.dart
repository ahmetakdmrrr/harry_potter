import 'dart:ui';
import 'package:flutter/material.dart';
import '../../domain/models/character.dart';

class CharacterDetailDialog extends StatelessWidget {
  final Character character;
  const CharacterDetailDialog({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final dialogWidth =
        width < 400
            ? width * 0.98
            : width < 600
            ? 360
            : 420;
    return Stack(
      children: [
        // Blur ve koyu overlay
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: Container(color: Colors.black.withOpacity(0.45)),
          ),
        ),
        Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              width: dialogWidth.toDouble(),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(28),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.18),
                    blurRadius: 32,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                child: Stack(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Hero(
                          tag: character.name,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child:
                                character.image?.isNotEmpty == true
                                    ? Image.network(
                                      character.image!,
                                      width: 120,
                                      height: 120,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) => Icon(
                                            Icons.person,
                                            size: 90,
                                            color: Colors.grey.shade400,
                                          ),
                                    )
                                    : Icon(
                                      Icons.person,
                                      size: 90,
                                      color: Colors.grey.shade400,
                                    ),
                          ),
                        ),
                        const SizedBox(height: 18),
                        Text(
                          character.name,
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        _DetailRow(label: 'Ev', value: character.house),
                        _DetailRow(label: 'Tür', value: character.species),
                        _DetailRow(label: 'Cinsiyet', value: character.gender),
                        const SizedBox(height: 8),
                      ],
                    ),
                    Positioned(
                      right: -8,
                      top: -8,
                      child: IconButton(
                        icon: const Icon(Icons.close_rounded, size: 28),
                        splashRadius: 22,
                        onPressed: () => Navigator.of(context).pop(),
                        color: Colors.grey.shade700,
                        tooltip: 'Kapat',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
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
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$label: ',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          Flexible(
            child: Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
