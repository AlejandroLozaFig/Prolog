# =================================================================
# Nombre: Loza Figueroa Pedro Alejandro
# Tema 1: Conceptos Fundamentales
# Proyecto: Sistema de Evaluación de Boxeadores
# =================================================================

import sys

# Lista global que funcionará como nuestra base de datos en memoria
boxeadores = []

def agregar_boxeador():
    """Registra un nuevo pugilista en el sistema."""
    print("\n--- REGISTRO DE NUEVO BOXEADOR ---")
    nombre = input("Nombre del boxeador: ")
    division = input("División (ej. Ligero, Welter, Pesado): ")
    guardia = input("Guardia (Diestro/Zurdo): ")
    
    # Creamos un diccionario para el boxeador
    pugilista = {
        "nombre": nombre,
        "division": division,
        "guardia": guardia,
        "puntuaciones_tecnicas": []
    }
    
    boxeadores.append(pugilista)
    print(f"\n[+] Boxeador '{nombre}' agregado al registro exitosamente.")

def mostrar_boxeadores():
    """Muestra todos los boxeadores registrados actualmente."""
    if len(boxeadores) == 0:
        print("\n[-] El registro está vacío. Agrega boxeadores primero.")
        return
    
    print("\n--- ROSTER ACTUAL DE LA COMISIÓN ---")
    for i in range(len(boxeadores)):
        b = boxeadores[i]
        print(f"{i + 1} - {b['nombre']} | División: {b['division']} | Guardia: {b['guardia']}")

def buscar_division():
    """Filtra y muestra boxeadores según su división de peso."""
    if len(boxeadores) == 0:
        print("\n[-] El registro está vacío.")
        return

    division_buscada = input("\nIngresa la división a buscar: ")
    encontrado = False
    
    print(f"\n--- BOXEADORES EN PESO {division_buscada.upper()} ---")
    for b in boxeadores:
        if b["division"].lower() == division_buscada.lower():
            print(f"> {b['nombre']} (Guardia: {b['guardia']})")
            encontrado = True
            
    if not encontrado:
        print("[-] No se encontraron peleadores en esa categoría específica.")

def evaluar_tecnica():
    """Añade una calificación técnica a un boxeador específico."""
    if len(boxeadores) == 0:
        print("\n[-] No hay boxeadores para evaluar en este momento.")
        return
        
    mostrar_boxeadores()
    numero = int(input("\nNúmero del boxeador a evaluar en la lista: "))
    
    if 1 <= numero <= len(boxeadores):
        nota = float(input("Calificación de técnica (1-10): "))
        if 1 <= nota <= 10:
            boxeadores[numero - 1]["puntuaciones_tecnicas"].append(nota)
            print("[+] Puntuación técnica registrada correctamente.")
        else:
            print("[-] Error: La calificación debe estar en el rango de 1 a 10.")
    else:
        print("[-] Número de registro incorrecto. Intenta de nuevo.")

def promedio(lista_notas):
    """Calcula el promedio de una lista de calificaciones."""
    if len(lista_notas) == 0:
        return 0
    suma = 0
    for n in lista_notas:
        suma += n
    return suma / len(lista_notas)

def mejor_libra_por_libra():
    """Determina al mejor boxeador basándose en sus promedios técnicos."""
    if len(boxeadores) == 0:
        print("\n[-] El registro está vacío.")
        return
        
    mejor = None
    mejor_promedio = 0
    
    for b in boxeadores:
        prom = promedio(b["puntuaciones_tecnicas"])
        if prom > mejor_promedio:
            mejor = b
            mejor_promedio = prom
            
    if mejor and mejor_promedio > 0:
        print("\n🏆 --- MEJOR LIBRA POR LIBRA (P4P) --- 🏆")
        print(f"Peleador: {mejor['nombre']}")
        print(f"Puntuación Técnica Promedio: {mejor_promedio:.2f}/10")
    else:
        print("\n[-] Aún no hay evaluaciones registradas para definir al mejor P4P.")

def dar_de_baja():
    """Elimina a un boxeador del registro."""
    if len(boxeadores) == 0:
        print("\n[-] No hay boxeadores para dar de baja.")
        return
        
    mostrar_boxeadores()
    numero = int(input("\nNúmero del boxeador a retirar del registro: "))
    
    if 1 <= numero <= len(boxeadores):
        eliminado = boxeadores.pop(numero - 1)
        print(f"[!] El boxeador '{eliminado['nombre']}' ha sido dado de baja del sistema.")
    else:
        print("[-] Número de registro incorrecto.")

def menu():
    """Menú principal interactivo para el usuario."""
    while True:
        print("\n" + "="*45)
        print(" MENÚ COMISIÓN DE BOXEO (ESTRUCTURADO) ")
        print("="*45)
        print("1. Registrar nuevo boxeador")
        print("2. Mostrar roster completo")
        print("3. Buscar peleadores por división")
        print("4. Evaluar técnica de combate")
        print("5. Ver ranking Libra por Libra (P4P)")
        print("6. Dar de baja a un boxeador")
        print("7. Salir del programa")
        
        opcion = input("\nElige una opción (1-7): ")
        
        if opcion == "1":
            agregar_boxeador()
        elif opcion == "2":
            mostrar_boxeadores()
        elif opcion == "3":
            buscar_division()
        elif opcion == "4":
            evaluar_tecnica()
        elif opcion == "5":
            mejor_libra_por_libra()
        elif opcion == "6":
            dar_de_baja()
        elif opcion == "7":
            print("\nCerrando sistema... ¡Hasta la próxima pelea!")
            sys.exit()
        else:
            print("[-] Opción inválida. Por favor, elige un número del 1 al 7.")

if __name__ == "__main__":
    menu()