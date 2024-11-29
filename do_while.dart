import 'dart:io';
import 'dart:math';

void main() {
  print("################################################################");
  print("Ejercicio do while y switch");
  print("Actividad Contacto con el Docente");
  print("Santos Israel");

  int opciones;

  do {
    print("--MENU PRINCIPAL--");
    print("1. Ejercicios 00");
    print("2. Ejercicios 01");
    print("3. Ejercicios 02");
    print("99. Salir");
    stdout.write("Seleccione una opción (1-3 and 99): ");
    opciones = int.parse(stdin.readLineSync()!);

    switch (opciones) {
      case 1:
        ejercicio3();  // Llamada a la función para el ejercicio 1
        ejercicio6();  // Llamada a la función para el ejercicio 2
        ejercicio9();  // Llamada a la función para el ejercicio 3
        ejercicio12();
        break;
      case 2:
        calcularSalario();
        print("########################################################");
        print("  ");
        print("Implementando  función para calcular el factorial de un número");
        int factorial20 = calcularFactorial(20);  // Llamada a la función para calcular el factorial
        print("El factorial de 20 es: $factorial20");
        print("  ");
        print("########################################################");

        calcularCubo();
        break;
        
      case 3:
      ejercicio3_2();

        // Lista de registros de empleados
  List<Map<String, dynamic>> empleados = [
    {"nombre": "Juan", "cargo": "Analista", "salario": 1200, "departamento": "IT"},
    {"nombre": "Ana", "cargo": "Desarrollador", "salario": 900, "departamento": "IT"},
    {"nombre": "Luis", "cargo": "Contador", "salario": 850, "departamento": "Finanzas"},
    {"nombre": "Maria", "cargo": "Gerente", "salario": 2500, "departamento": "IT"},
    {"nombre": "Carlos", "cargo": "Asistente", "salario": 700, "departamento": "Recursos Humanos"},
  ];
   
  // Umbral y departamento a filtrar
  int umbral = 1000;
  String departamentoEspecifico = "IT";

  // Llamada a la función
  List<Map<String, dynamic>> resultado = filtrarEmpleados(empleados, umbral, departamentoEspecifico);

  // Imprimir los resultados
  if (resultado.isEmpty) {
    print("");
    print("No se encontraron empleados con un salario inferior a $umbral en el departamento $departamentoEspecifico.");
     print("");
  } else {
     print("");
    print("Empleados con un salario inferior a $umbral en el departamento $departamentoEspecifico:");
     print("");
    for (var empleado in resultado) {
       print("");
      print("${empleado['nombre']} - ${empleado['cargo']} - \$${empleado['salario']}");
       print("");
    }
  }
   
   ejercicio3_3();


      case 99:
        print("\nSalir");
        print("\nGracias por usar nuestro programa, finalizando sesión...");
        break;
      default:
        print("\nOpción inválida. Por favor, intente de nuevo.");
    }
  } while (opciones != 99);
}

// Función para resolver ecuaciones de 2do grado
void ejercicio3() {
  print("\nEjercicio 3");
  print("Ecuaciones de 2do grado de la forma ax^2 + bx + c = 0");

  int a, b, c;
  double x1, x2, discriminante;

  print("Ingrese el coeficiente a:");
  a = int.parse(stdin.readLineSync()!);

  if (a == 0) {
    print("El coeficiente de 'a' no puede ser igual a cero.");
    return;
  }

  print("Ingrese el coeficiente b:");
  b = int.parse(stdin.readLineSync()!);

  print("Ingrese el coeficiente c:");
  c = int.parse(stdin.readLineSync()!);

  // Calcular el discriminante
  discriminante = b * b - (4 * a * c).toDouble();

  if (discriminante > 0) {
    x1 = (-b + sqrt(discriminante)) / (2 * a);
    x2 = (-b - sqrt(discriminante)) / (2 * a);
    print("Las raíces son reales y diferentes:");
    print("x1 = $x1");
    print("x2 = $x2");
  } else if (discriminante == 0) {
    x1 = -b / (2 * a);
    print("Las raíces son reales e iguales:");
    print("x1 = x2 = $x1");
  } else {
    double parteReal = -b / (2 * a);
    double parteImaginaria = sqrt(-discriminante) / (2 * a);
    print("No hay raíces reales. Las raíces complejas son:");
    print("x1 = $parteReal + ${parteImaginaria}i");
    print("x2 = $parteReal - ${parteImaginaria}i");
  }
}

// Función para determinar si un número es primo
void ejercicio6() {
  print("\nEjercicio 6");
  print("Determinar si un número es primo o no");

  int numero;
  bool esPrimo = true;

  print("Ingrese un número:");
  numero = int.parse(stdin.readLineSync()!);

  if (numero < 2) {
    print("El número $numero no es primo");
    return;
  }

  for (int i = 2; i <= sqrt(numero).toInt(); i++) {
    if (numero % i == 0) {
      esPrimo = false;
      break;
    }
  }

  if (esPrimo) {
    print("El número $numero es primo");
  } else {
    print("El número $numero no es primo");
  }
}

// Función para determinar si una persona puede acceder a un descuento
void ejercicio9() {
  print("\nEjercicio 9");
  print("Determinar si una persona puede acceder a un descuento");

  int edad;
  double precio;

  print("Ingrese su edad:");
  edad = int.parse(stdin.readLineSync()!);

  print("Ingrese el precio del producto:");
  precio = double.parse(stdin.readLineSync()!);

  if ((edad >= 60 || edad <= 18) && precio >= 100) {
    double descuento = precio * 0.10;
    double precioConDescuento = precio - descuento;
    print("La persona es elegible para un descuento del 10%");
    print("El precio final con descuento es: \$${precioConDescuento}");
  } else {
    print("Lo sentimos, no cumple con los requisitos para obtener un descuento.");
  }
}
void ejercicio12() {
  // Solicitar la edad y los años de experiencia laboral al usuario
  print("Ejercicio 12");
  print("Programa para evaluar si un puesto es apto para una entrevista.");
  
  stdout.write("Ingrese su edad: ");
  int edad = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la cantidad de años de experiencia laboral: ");
  int experiencia = int.parse(stdin.readLineSync()!);

  // Evaluar si cumple con los requisitos para la entrevista
  if (edad >= 25 && edad <= 35 && experiencia >= 3) {
    print("El aspirante puede ser seleccionado para una entrevista.");
  } else {
    print("Lo sentimos, el aspirante no cumple con los requisitos para la entrevista.");
  }
}

// Función para calcular el salario según la edad y la profesión
void calcularSalario() {
  // Listas de edades y profesiones
  List<int> edades = [];
  List<String> profesiones = [];

  // Solicitar al usuario su edad y profesión y agregarlas a las listas
  print("Programa de bonos salariales");
  print("Por favor ingrese la información personal del participante");
  stdout.write("Ingrese su edad: ");
  int edad = int.parse(stdin.readLineSync()!);
  edades.add(edad);  // Añadir la edad a la lista de edades

  stdout.write("Ingrese su profesión: ");
  String profesion = stdin.readLineSync()!.toLowerCase();  // Convertir la profesión a minúsculas para comparación
  profesiones.add(profesion);  // Añadir la profesión a la lista de profesiones

  // Calcular el salario basado en la edad de la persona
  double salario;

  if (edades[0] < 30) {
    salario = 1200;
  } else if (edades[0] >= 30 && edades[0] <= 50) {
    salario = 1800;
  } else {
    salario = 2200;
  }

  // Aplicar el bono según la profesión
  if (profesiones[0] == 'medico') {
    salario *= 1.10;  // Añadir bono del 10%
  } else if (profesiones[0] == 'abogado') {
    salario *= 1.05;  // Añadir bono del 5%
  }

  // Mostrar el salario final
  print("El salario final es: \$${salario.toStringAsFixed(2)}");
}

// Función para calcular el factorial de un número
int calcularFactorial(int numero) {
  int resultado = 1;
  for (int i = 1; i <= numero; i++) {
    resultado *= i;
  }
  return resultado;  // Retornar el resultado del factorial
}

void calcularCubo(){
  print("########################################################");
print("  ");
  print("Calcular la suma de los cubos de los primeros 20 números naturales");
  print("  ");
  print("########################################################");
  // Calcular la suma de los cubos de los primeros 20 números naturales
  int sumaCubos = 0;

  for (int i = 1; i <= 20; i++) {
    sumaCubos += i * i * i; // Agregar el cubo de cada número a la suma
  }
print("########################################################");
print("  ");
  print("La suma de los cubos de los primeros 20 números naturales es: $sumaCubos");
  print("  ");
  print("########################################################");
}





// Función para ordenar un arreglo
List<int> ordenarArreglo(List<int> numeros) {
  List<int> numerosOrdenados = List.from(numeros); // Crear una copia del arreglo original
  numerosOrdenados.sort(); // Ordenar la copia en orden ascendente
  return numerosOrdenados;
}

// Función del ejercicio 3.2
void ejercicio3_2() {
  // Ejemplo de uso de la función
  List<int> numeros = [34, 12, 56, 8, 1, 19, 45];
  print("########################################################");
print("  ");
   print("Areglo para ordenar los numeros de menor a mayor");

  print("Arreglo original: $numeros");

  List<int> numerosOrdenados = ordenarArreglo(numeros);
  print("Arreglo ordenado de menor a mayor: $numerosOrdenados");
  print("  ");
  print("########################################################");
}


// Función para filtrar empleados
List<Map<String, dynamic>> filtrarEmpleados(List<Map<String, dynamic>> empleados, int umbral, String departamento) {
  return empleados.where((empleado) {
    return empleado["salario"] < umbral && empleado["departamento"] == departamento;
  }).toList();
}

   class Producto {
  String nombre;
  Map<String, int> tallas; // Tallas y su cantidad disponible
  double precio;
  String marca;

  Producto({
    required this.nombre,
    required this.tallas,
    required this.precio,
    required this.marca,
  });
}

// Función principal para el caso 3
void ejercicio3_3() {
  // Crear inventario de productos
  List<Producto> inventario = [
    Producto(
      nombre: "Camiseta básica",
      tallas: {"S": 5, "M": 2, "L": 0},
      precio: 299.99,
      marca: "FashionWear",
    ),
    Producto(
      nombre: "Pantalón vaquero",
      tallas: {"S": 10, "M": 12, "L": 1},
      precio: 799.99,
      marca: "DenimPro",
    ),
    Producto(
      nombre: "Chaqueta impermeable",
      tallas: {"S": 0, "M": 0, "L": 0},
      precio: 1299.99,
      marca: "RainShield",
    ),
    Producto(
      nombre: "Zapatos deportivos",
      tallas: {"S": 20, "M": 25, "L": 15},
      precio: 1499.99,
      marca: "RunFast",
    ),
  ];
  // Función para identificar productos agotados o por debajo de un umbral
List<Producto> identificarProductosCriticos(List<Producto> inventario, int umbral) {
  List<Producto> productosCriticos = [];

  for (var producto in inventario) {
    // Revisar si alguna talla tiene cantidad por debajo del umbral
    bool esCritico = producto.tallas.values.any((cantidad) => cantidad <= umbral);
    if (esCritico) {
      productosCriticos.add(producto);
    }
  }

  return productosCriticos;
}

  // Solicitar al usuario el umbral
  print("########################################################");
   print("");
  print("Control de Umbrales de costos");
  print("");
  stdout.write("Ingrese el umbral de cantidad mínima: ");
  int umbral = int.parse(stdin.readLineSync()!);

  // Identificar productos críticos
  List<Producto> productosCriticos = identificarProductosCriticos(inventario, umbral);

  // Mostrar resultados
  if (productosCriticos.isEmpty) {
    print("No hay productos por debajo del umbral de $umbral.");
  } else {
    print("Productos críticos (agotados o por debajo del umbral):");
    for (var producto in productosCriticos) {
      print("- ${producto.nombre} (${producto.marca})");
      print("  Tallas críticas:");
      producto.tallas.forEach((talla, cantidad) {
        if (cantidad <= umbral) {
          print("    Talla $talla: $cantidad unidades");
        }
      });
      print("  Precio: \$${producto.precio.toStringAsFixed(2)}");
       print("");
       print("########################################################");
    }
  }
}
