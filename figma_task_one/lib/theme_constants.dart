import 'package:flutter/material.dart';

// ── Brand colours ────────────────────────────────────────────────────────────
const Color shPrimaryBlue    = Color(0xFF1A2A8F); // deep navy blue
const Color shAccentBlue     = Color(0xFF3D5AFE); // bright accent
const Color shLightBlue      = Color(0xFFE8ECFF); // light blue tint
const Color shBackground     = Color(0xFFF4F6FA); // page background
const Color shCardWhite      = Color(0xFFFFFFFF);
const Color shGrey           = Color(0xFF9E9E9E);
const Color shDarkText       = Color(0xFF1A1A2E);
const Color shSubtitleText   = Color(0xFF6B7280);

// ── Quick helpers ─────────────────────────────────────────────────────────────
BoxDecoration get shCardDecoration => BoxDecoration(
  color: shCardWhite,
  borderRadius: BorderRadius.circular(16),
  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.05),
      blurRadius: 8,
      offset: const Offset(0, 2),
    )
  ],
);
