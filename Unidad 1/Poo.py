# =================================================================
# Nombre: Loza Figueroa Pedro Alejandro
# Tema 1: Conceptos Fundamentales
# Proyecto: Sistema de Evaluación de Boxeadores
# =================================================================

import sys

class Boxeador:
    """Clase que representa a un boxeador individual."""
    
    def __init__(self, nombre, division, guardia):
        self.nombre = nombre
        self.division = division
        self.guardia = guardia
        self.puntuaciones = []
        
    def agregar_puntuacion(self, nota):
        """Añade una nota técnica al historial del boxeador."""
        if 1 <= nota <= 10:
            self.puntuaciones.append(nota)
            return True
        return False
        
    def obtener_promedio(self):
        """Calcula el promedio técnico del boxeador."""
        if len(self.puntuaciones) == 0:
            return 0
        suma = sum(self.puntuaciones)
        return suma / len(self.puntuaciones)
        
    def mostrar_info(self):
        """Devuelve una cadena formateada con la información del boxeador."""
        return f"{self.nombre} - División: {self.division} - Guardia: {self.guardia}"


class Promotora:
    """Clase que maneja una colección de objetos Boxeador."""
    
    def __init__(self, nombre_promotora):
        self.nombre = nombre_promotora
        self.roster = []
        
    def firmar_boxeador(self, boxeador):
        """Agrega un objeto Boxeador a la lista de la promotora."""
        self.roster.append(boxeador)
        print(f"\n[+] ¡{boxeador.nombre} acaba de firmar contrato con {self.nombre}!")
        
    def mostrar_roster(self):
        """Imprime todos los boxeadores firmados."""
        if len(self.roster) == 0:
            print(f"\n[-] {self.nombre} no tiene peleadores firmados actualmente.")
            return False
            
        print(f"\n--- ROSTER OFICIAL DE {self.nombre.upper()} ---")
        for i in range(len(self.roster)):
            print(f"{i + 1} - {self.roster[i].mostrar_info()}")
        return True
            
    def buscar_por_division(self, division):
        """Busca boxeadores en una división específica."""
        encontrado = False
        print(f"\n--- BÚSQUEDA DE PESO {division.upper()} ---")
        for b in self.roster:
            if b.division.lower() == division.lower():
                print(f"> {b.mostrar_info()}")
                encontrado = True
                
        if not encontrado:
            print("[-] No hay peleadores en esa división por el momento.")
            
    def peleador_franquicia(self):
        """Encuentra al boxeador con el mejor promedio."""
        if len(self.roster) == 0:
            return None
            
        mejor = None
        max_promedio = 0
        
        for b in self.roster:
            prom = b.obtener_promedio()
            if prom > max_promedio:
                mejor = b
                max_promedio = prom
                
        return mejor

    def rescindir_contrato(self, indice):
        """Elimina a un boxeador del roster según su índice."""
        if 0 <= indice < len(self.roster):
            eliminado = self.roster.pop(indice)
            print(f"\n[!] El contrato de {eliminado.nombre} ha sido rescindido.")
        else:
            print("\n[-] Índice incorrecto.")


def menu_poo():
    """Función principal que maneja la interacción con el usuario."""
    # Instanciamos nuestra clase principal
    mi_promotora = Promotora("Top Rank Boxing")
    
    while True:
        print("\n" + "="*45)
        print(f" MENÚ PROMOTORA {mi_promotora.nombre.upper()} (POO) ")
        print("="*45)
        print("1. Firmar nuevo boxeador (Agregar)")
        print("2. Ver roster activo (Mostrar)")
        print("3. Explorar por división (Buscar)")
        print("4. Calificar técnica en entrenamiento")
        print("5. Ver peleador franquicia (Mejor evaluado)")
        print("6. Rescindir contrato (Dar de baja)")
        print("7. Salir del sistema")
        
        opcion = input("\nElige una opción (1-7): ")
        
        if opcion == "1":
            print("\n--- FIRMAR NUEVO TALENTO ---")
            nombre = input("Nombre del peleador: ")
            div = input("División de peso: ")
            guardia = input("Postura/Guardia: ")
            # Creamos el objeto y lo pasamos a la promotora
            nuevo_peleador = Boxeador(nombre, div, guardia)
            mi_promotora.firmar_boxeador(nuevo_peleador)
            
        elif opcion == "2":
            mi_promotora.mostrar_roster()
            
        elif opcion == "3":
            div = input("\nDivisión de peso a buscar: ")
            mi_promotora.buscar_por_division(div)
            
        elif opcion == "4":
            if mi_promotora.mostrar_roster():
                numero = int(input("\nNúmero del peleador en la lista: "))
                if 1 <= numero <= len(mi_promotora.roster):
                    nota = float(input("Calificación técnica del sparring (1-10): "))
                    if mi_promotora.roster[numero - 1].agregar_puntuacion(nota):
                        print("[+] Puntuación registrada con éxito en su perfil.")
                    else:
                        print("[-] Calificación inválida (debe ser del 1 al 10).")
                else:
                    print("[-] Número incorrecto de la lista.")
                
        elif opcion == "5":
            mejor = mi_promotora.peleador_franquicia()
            if mejor and mejor.obtener_promedio() > 0:
                print("\n --- PELEADOR FRANQUICIA (ESTRELLA) --- ")
                print(f"Nombre: {mejor.nombre}")
                print(f"Promedio Técnico General: {mejor.obtener_promedio():.2f}/10")
            else:
                print("\n[-] No hay datos suficientes o calificaciones registradas.")
                
        elif opcion == "6":
            if mi_promotora.mostrar_roster():
                numero = int(input("\nNúmero del peleador a despedir: "))
                mi_promotora.rescindir_contrato(numero - 1)
                
        elif opcion == "7":
            print("\nSaliendo del sistema de la promotora... ¡Nos vemos en el ring!")
            sys.exit()
            
        else:
            print("\n[-] Opción inválida. Elige un número del 1 al 7.")

if __name__ == "__main__":
    menu_poo()