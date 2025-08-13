# 🎫 Ticket App - Sistema de Impresión de Tickets

## 📱 Descripción del Proyecto

**Ticket App** es una aplicación móvil desarrollada en **Flutter** que permite generar e imprimir tickets personalizados para diferentes propósitos. La aplicación está diseñada para ser una herramienta práctica y eficiente para la impresión de tickets en entornos comerciales y de oficina.

## 🚀 Características Principales

### ✨ Funcionalidades Implementadas
- **Separador de Libros**: Genera tickets personalizados para marcar páginas en libros con título y descripción
- **Atajos de Teclado**: Crea tickets informativos con combinaciones de teclas y sus descripciones
- **Sistema de Impresión**: Integración completa con impresoras térmicas ESC/POS
- **Interfaz Intuitiva**: Diseño moderno y responsive con Material Design

### 🎨 Características Técnicas
- **Arquitectura Limpia**: Implementación de Clean Architecture con separación de capas
- **Estado Global**: Gestión de estado con BLoC pattern
- **Diseño Responsivo**: Soporte para múltiples plataformas (Android, iOS, Web, Desktop)
- **Temas Personalizables**: Sistema de colores y estilos consistentes

## 🛠️ Stack Tecnológico

### **Frontend & Framework**
- **Flutter 3.3.3+** - Framework de desarrollo multiplataforma
- **Dart SDK** - Lenguaje de programación moderno y tipado

### **Arquitectura & Patrones**
- **Clean Architecture** - Separación clara de responsabilidades
- **BLoC Pattern** - Gestión de estado reactivo
- **Repository Pattern** - Abstracción de acceso a datos

### **Dependencias Principales**
- **flutter_bloc** - Implementación del patrón BLoC
- **freezed** - Generación de código para modelos inmutables
- **json_annotation** - Serialización JSON
- **esc_pos_utils_plus** - Utilidades para impresoras térmicas
- **flutter_esc_pos_network** - Impresión por red

### **Herramientas de Desarrollo**
- **build_runner** - Generación automática de código
- **flutter_lints** - Reglas de linting para código limpio
- **flutter_animate** - Animaciones fluidas y modernas

## 🏗️ Estructura del Proyecto

```
lib/
├── core/                    # Utilidades y constantes del sistema
│   ├── constants/          # Constantes de la aplicación
│   └── utils/              # Utilidades y helpers
├── domain/                 # Lógica de negocio
│   ├── data/               # Modelos de datos
│   └── services/           # Servicios de dominio
├── ui/                     # Capa de presentación
│   ├── global_widget/      # Widgets reutilizables
│   ├── modules/            # Módulos principales de la UI
│   └── dialogs/            # Diálogos y modales
├── bootstrap.dart          # Configuración de la aplicación
└── main.dart               # Punto de entrada
```
