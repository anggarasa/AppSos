# Splash Screen - AppSos

## Overview

Splash screen yang menarik dan modern untuk aplikasi sosial media AppSos dengan animasi yang smooth dan branding yang konsisten.

## Features

### 🎨 Visual Design

- **Gradient Background**: Menggunakan kombinasi warna primary, primaryLight, dan secondary
- **Animated Logo**: Logo dengan efek glow dan animasi scale yang smooth
- **Floating Particles**: Partikel-partikel yang bergerak untuk menambah kesan dinamis
- **Modern Typography**: Menggunakan font Belanosima dengan hierarchy yang jelas

### ⚡ Animations

- **Logo Animation**: Scale dan opacity animation dengan elastic curve
- **Text Animation**: Slide up dan fade in untuk app name dan tagline
- **Background Animation**: Fade in gradient background
- **Loading Animation**: Rotating loading indicator dengan pulse effect
- **Particle Animation**: Floating particles dengan staggered timing

### 🎯 Branding

- **App Name**: "AppSos" dengan typography yang bold
- **Tagline**: "Connect. Share. Inspire."
- **Subtitle**: "Your Social Media Companion"
- **Copyright**: "© 2025 AppSos. All rights reserved."

## Components

### SplashPage

Main splash screen widget yang mengatur semua animasi dan layout.

### AnimatedLogo

Logo dengan efek glow, shadow, dan highlight yang animated.

### AnimatedLoadingIndicator

Loading indicator dengan multiple rings yang berputar dan pulse effect.

### FloatingParticles

Background particles yang memberikan kesan dinamis pada splash screen.

## Color Scheme

- **Primary**: #6C5CE7 (Purple)
- **Primary Light**: #9B88FF (Light Purple)
- **Secondary**: #00B894 (Teal)
- **Accent**: #FF6B6B (Coral)
- **Background**: Gradient dari primary ke secondary

## Usage

```dart
const SplashPage()
```

## Animation Timeline

1. **0ms**: Background gradient fade in
2. **300ms**: Logo scale dan opacity animation
3. **800ms**: Text slide up dan fade in
4. **1000ms**: Loading indicator start
5. **3000ms**: Navigate to next screen (TODO)

## Customization

- Logo size dapat diubah melalui parameter `size` di AnimatedLogo
- Animation duration dapat disesuaikan di masing-masing AnimationController
- Colors dapat diubah di AppColors class
- Text content dapat dimodifikasi di \_buildAppInfo method
