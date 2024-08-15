// ignore_for_file: lines_longer_than_80_chars

class Validators {
  // Validador de campo vacío
  static String? validateNotEmpty(String? value, [String? fieldName]) {
    if (value == null || value.isEmpty) {
      final field = (fieldName == null || fieldName.isEmpty) ? 'Este campo' : 'El campo $fieldName';
      return '$field no puede estar vacío';
    }
    return null;
  }

  static String? validateSimpleNotEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return 'Campo requerido';
    }
    return null;
  }

  static String? validateNoExceds(String? value, int num) {
    if (int.parse(value ?? '0') > num) {
      return 'No puede exceder de $value';
    }
    return null;
  }

  // Validador de longitud mínima
  static String? validateMinLength(String? value, int minLength) {
    if (value != null && value.length < minLength) {
      return 'Debe tener al menos $minLength caracteres';
    }
    return null;
  }

  // Validador de longitud exacta
  static String? validateLength(String? value, int exactLength) {
    if (value != null && value.length != exactLength) {
      return 'Debe tener al menos $exactLength caracteres';
    }
    return null;
  }

  // Validador de longitud exacta si escribió un caracter
  static String? validateLengthIfIsNoEmpty(String? value, int exactLength) {
    if (value?.isEmpty ?? true) {
      return null;
    }
    if (value != null && value.length != exactLength) {
      return 'Debe tener al menos $exactLength caracteres';
    }
    return null;
  }

  // Validador de email
  static String? validateEmail(String? value) {
    if (value == '') {
      return null;
    }
    if (value == null || !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Ingrese un email válido';
    }
    return null;
  }

  // Validador de número de teléfono
  static String? validatePhoneNumber(String? value) {
    if (value == null || !RegExp(r'^\d{10}$').hasMatch(value)) {
      return 'Ingrese un número de teléfono válido';
    }
    return null;
  }

  // Validador de contraseña
  static String? validatePassword(String? value) {
    //if (value == null || value.length < 8) {
    //  return 'La contraseña debe tener al menos 8 caracteres';
    //}
    return null;
  }

  // Validador con mensaje dinámico
  static String? validateWithDynamicMessage(String? value, int minLength) {
    if (value == null || value.isEmpty) {
      return 'Por favor ingrese algún valor';
    }
    if (value.length < minLength) {
      return 'El valor ingresado "$value" es muy corto';
    }
    return null;
  }

  // Validador múltiple
  static String? multipleValidators(String? value) {
    final notEmpty = validateNotEmpty(value);
    if (notEmpty != null) return notEmpty;

    final minLength = validateMinLength(value, 6);
    if (minLength != null) return minLength;

    return null;
  }

  static String? validateWithMultiple(List<String? Function(String?)> validators, String? value) {
    for (final validator in validators) {
      final result = validator(value);
      if (result != null) {
        return result;
      }
    }
    return null;
  }

  static String? validateMultipleLength(String? value, List<int> listLength) {
    if (value != null && !listLength.any((element) => element == value.length)) {
      return 'Debe tener al menos ${listLength.map((e) => e.toString()).join(',')} caracteres';
    }
    return null;
  }
}
