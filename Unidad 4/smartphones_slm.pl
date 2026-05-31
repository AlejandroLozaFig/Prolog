% =================================================================
% Nombre: Loza Figueroa Pedro Alejandro
% Tema 4: Modelo de Programación Lógica
% Proyecto: SLM - Sistema Recomendador de Smartphones
% =================================================================

:- dynamic respuesta/2.

% =================================================================
% SECCION 1: BASE DE CONOCIMIENTO (ATRIBUTOS POR DISPOSITIVO)
% =================================================================

% --- Samsung Galaxy S23 (Normal) ---
dispositivo_atributo(galaxy_s23, android).
dispositivo_atributo(galaxy_s23, procesador_gama_alta).
dispositivo_atributo(galaxy_s23, pantalla_compacta).
dispositivo_atributo(galaxy_s23, almacenamiento_alto).
dispositivo_atributo(galaxy_s23, camara_premium).

% --- iPhone 15 Pro ---
dispositivo_atributo(iphone_15_pro, ios).
dispositivo_atributo(iphone_15_pro, procesador_gama_alta).
dispositivo_atributo(iphone_15_pro, ecosistema_cerrado).
dispositivo_atributo(iphone_15_pro, camara_premium).
dispositivo_atributo(iphone_15_pro, pantalla_compacta).

% --- Samsung Galaxy S24 Ultra ---
dispositivo_atributo(galaxy_s24_ultra, android).
dispositivo_atributo(galaxy_s24_ultra, procesador_gama_alta).
dispositivo_atributo(galaxy_s24_ultra, pantalla_grande).
dispositivo_atributo(galaxy_s24_ultra, multitarea_pesada).
dispositivo_atributo(galaxy_s24_ultra, camara_premium).

% --- Google Pixel 8a ---
dispositivo_atributo(pixel_8a, android).
dispositivo_atributo(pixel_8a, fotografia_computacional).
dispositivo_atributo(pixel_8a, pantalla_compacta).
dispositivo_atributo(pixel_8a, presupuesto_ajustado).
dispositivo_atributo(pixel_8a, actualizaciones_rapidas).

% --- POCO F5 Pro ---
dispositivo_atributo(poco_f5_pro, android).
dispositivo_atributo(poco_f5_pro, gaming).
dispositivo_atributo(poco_f5_pro, carga_rapida).
dispositivo_atributo(poco_f5_pro, bateria_masiva).
dispositivo_atributo(poco_f5_pro, presupuesto_ajustado).

% --- iPhone 14 Plus ---
dispositivo_atributo(iphone_14_plus, ios).
dispositivo_atributo(iphone_14_plus, pantalla_grande).
dispositivo_atributo(iphone_14_plus, bateria_masiva).
dispositivo_atributo(iphone_14_plus, ecosistema_cerrado).
dispositivo_atributo(iphone_14_plus, actualizaciones_rapidas).

% --- Motorola Edge 40 ---
dispositivo_atributo(moto_edge_40, android).
dispositivo_atributo(moto_edge_40, carga_rapida).
dispositivo_atributo(moto_edge_40, presupuesto_ajustado).
dispositivo_atributo(moto_edge_40, pantalla_compacta).
dispositivo_atributo(moto_edge_40, actualizaciones_rapidas).

% --- ASUS ROG Phone 8 ---
dispositivo_atributo(rog_phone_8, android).
dispositivo_atributo(rog_phone_8, gaming).
dispositivo_atributo(rog_phone_8, procesador_gama_alta).
dispositivo_atributo(rog_phone_8, bateria_masiva).
dispositivo_atributo(rog_phone_8, pantalla_grande).

% --- Samsung Galaxy A55 ---
dispositivo_atributo(galaxy_a55, android).
dispositivo_atributo(galaxy_a55, bateria_masiva).
dispositivo_atributo(galaxy_a55, presupuesto_ajustado).
dispositivo_atributo(galaxy_a55, almacenamiento_alto).
dispositivo_atributo(galaxy_a55, pantalla_grande).


% =================================================================
% SECCION 2: NOMBRES LEGIBLES DE LOS DISPOSITIVOS
% =================================================================

nombre_dispositivo(galaxy_s23, 'Samsung Galaxy S23 (Version Normal)').
nombre_dispositivo(iphone_15_pro, 'Apple iPhone 15 Pro').
nombre_dispositivo(galaxy_s24_ultra, 'Samsung Galaxy S24 Ultra').
nombre_dispositivo(pixel_8a, 'Google Pixel 8a').
nombre_dispositivo(poco_f5_pro, 'POCO F5 Pro').
nombre_dispositivo(iphone_14_plus, 'Apple iPhone 14 Plus').
nombre_dispositivo(moto_edge_40, 'Motorola Edge 40').
nombre_dispositivo(rog_phone_8, 'ASUS ROG Phone 8').
nombre_dispositivo(galaxy_a55, 'Samsung Galaxy A55').


% =================================================================
% SECCION 3: PREGUNTAS DEL CUESTIONARIO (13 PREGUNTAS)
% =================================================================

pregunta(android, '¿Prefieres el sistema operativo Android por su libertad de personalizacion?').
pregunta(ios, '¿Prefieres el sistema operativo iOS de Apple por su fluidez?').
pregunta(procesador_gama_alta, '¿Buscas el maximo rendimiento posible (ej. Snapdragon 8 Gen 2 / A17 Pro)?').
pregunta(pantalla_compacta, '¿Te gustan los telefonos compactos que se puedan usar facil a una mano?').
pregunta(pantalla_grande, '¿Prefieres una pantalla grande (mas de 6.6 pulgadas) para consumir multimedia?').
pregunta(almacenamiento_alto, '¿Necesitas capacidades de almacenamiento de 256 GB o superiores?').
pregunta(camara_premium, '¿Es la calidad fotografica y de video de nivel profesional una prioridad para ti?').
pregunta(multitarea_pesada, '¿Usas muchas aplicaciones pesadas al mismo tiempo o requieres stylus/lapiz?').
pregunta(fotografia_computacional, '¿Te interesa que la IA mejore tus fotos automaticamente sin esfuerzo?').
pregunta(presupuesto_ajustado, '¿Buscas una buena relacion calidad-precio sin gastar en la gama ultra premium?').
pregunta(gaming, '¿Tu objetivo principal es jugar videojuegos con graficos al maximo (ej. Genshin Impact)?').
pregunta(carga_rapida, '¿Necesitas que tu bateria pase de 0 a 100% en menos de 40 minutos?').
pregunta(bateria_masiva, '¿Es indispensable que la bateria dure mas de un dia completo con uso rudo?').
pregunta(ecosistema_cerrado, '¿Utilizas otros dispositivos de la misma marca y buscas sincronizacion perfecta?').
pregunta(actualizaciones_rapidas, '¿Quieres ser de los primeros en recibir nuevas versiones de software?').


% =================================================================
% SECCION 4: ESPECIFICACIONES DESTACADAS POR DISPOSITIVO
% =================================================================

especificacion(galaxy_s23, 'Potencia bestial en formato compacto, ideal para uso a una mano').
especificacion(galaxy_s23, 'Procesador Snapdragon de alto rendimiento y excelente modulo de camaras').
especificacion(iphone_15_pro, 'Chasis de titanio, chip A17 Pro y ecosistema Apple impecable').
especificacion(galaxy_s24_ultra, 'S-Pen integrado, pantalla inmensa y zoom optico legendario').
especificacion(pixel_8a, 'La mejor camara de su rango de precio gracias a los algoritmos de Google').
especificacion(poco_f5_pro, 'Hardware para gaming y carga ultra rapida a un precio imbatible').
especificacion(iphone_14_plus, 'La experiencia iOS en pantalla grande con autonomia de bateria extrema').
especificacion(moto_edge_40, 'Diseno ultra delgado, carga super rapida y Android casi puro').
especificacion(rog_phone_8, 'Gatillos tactiles, refrigeracion avanzada y potencia gaming absoluta').
especificacion(galaxy_a55, 'Construccion premium, bateria duradera y soporte de software extendido').


% =================================================================
% SECCION 5: ENUMERACION DE ATRIBUTOS Y DISPOSITIVOS
% =================================================================

atributo(android).
atributo(ios).
atributo(procesador_gama_alta).
atributo(pantalla_compacta).
atributo(pantalla_grande).
atributo(almacenamiento_alto).
atributo(camara_premium).
atributo(multitarea_pesada).
atributo(fotografia_computacional).
atributo(presupuesto_ajustado).
atributo(gaming).
atributo(carga_rapida).
atributo(bateria_masiva).
atributo(ecosistema_cerrado).
atributo(actualizaciones_rapidas).

dispositivo(galaxy_s23).
dispositivo(iphone_15_pro).
dispositivo(galaxy_s24_ultra).
dispositivo(pixel_8a).
dispositivo(poco_f5_pro).
dispositivo(iphone_14_plus).
dispositivo(moto_edge_40).
dispositivo(rog_phone_8).
dispositivo(galaxy_a55).


% =================================================================
% SECCION 6: MOTOR DE INFERENCIA
% =================================================================

% Cuenta cuantas coincidencias hay entre el perfil del usuario y el dispositivo
calcular_puntaje(Dispositivo, Puntaje) :-
    findall(Attr, (dispositivo_atributo(Dispositivo, Attr), respuesta(Attr, si)), Coincidencias),
    length(Coincidencias, Puntaje).

compatible(Dispositivo) :-
    dispositivo(Dispositivo),
    calcular_puntaje(Dispositivo, Puntaje),
    Puntaje > 0.


% =================================================================
% SECCION 7: INTERACCION CON EL USUARIO
% =================================================================

hacer_pregunta(Atributo) :-
    pregunta(Atributo, Texto),
    format('~w~n', [Texto]),
    format(' > Respuesta (s/n): '),
    read(Resp),
    (Resp == s -> assertz(respuesta(Atributo, si)) ; assertz(respuesta(Atributo, no))),
    nl.

hacer_todas_preguntas :-
    forall(atributo(A), hacer_pregunta(A)).


% =================================================================
% SECCION 8: ORDENAMIENTO DE RECOMENDACIONES
% =================================================================

obtener_recomendaciones(Recomendaciones) :-
    findall(Puntaje-Dispositivo, (dispositivo(Dispositivo), calcular_puntaje(Dispositivo, Puntaje), Puntaje > 0), Lista),
    msort(Lista, Ascendente),
    reverse(Ascendente, Recomendaciones).


% =================================================================
% SECCION 9: PRESENTACION DE RESULTADOS
% =================================================================

linea :- write('====================================================='), nl.
separador :- write('-----------------------------------------------------'), nl.

mostrar_recomendaciones([]) :-
    nl, write(' Sin coincidencias. Intenta ser mas especifico o flexible en tus respuestas.'), nl.

mostrar_recomendaciones(Lista) :-
    nl, linea,
    write(' RESULTADO: TUS SMARTPHONES RECOMENDADOS'), nl,
    linea,
    mostrar_lista(Lista, 1).

mostrar_lista([], _).
mostrar_lista([Puntaje-Dispositivo | Resto], N) :-
    nombre_dispositivo(Dispositivo, Nombre),
    format('~n~w. ~w~n', [N, Nombre]),
    format('   Compatibilidad: ~w/5 atributos coinciden~n', [Puntaje]),
    write('   Especificaciones Destacadas:'), nl,
    forall(especificacion(Dispositivo, Esp), format('     * ~w~n', [Esp])),
    N1 is N + 1,
    mostrar_lista(Resto, N1).


% =================================================================
% SECCION 10: GESTION Y LIMPIEZA
% =================================================================

limpiar_sesion :-
    retractall(respuesta(_, _)).


% =================================================================
% SECCION 11: PREDICADO PRINCIPAL (INICIO)
% =================================================================

iniciar :-
    limpiar_sesion, nl, linea,
    write(' ASESOR TECNOLOGICO - RECOMENDADOR DE SMARTPHONES SLM '), nl,
    linea, nl,
    write(' Bienvenido. Este sistema analizara tus gustos tecnologicos'), nl,
    write(' y el uso que le das al movil para recomendarte la mejor opcion.'), nl, nl,
    write(' Instrucciones:'), nl,
    write(' - Escribe s. para responder SI (con punto final)'), nl,
    write(' - Escribe n. para responder NO (con punto final)'), nl, nl,
    separador,
    write(' INICIANDO DIAGNOSTICO DE HARDWARE Y SOFTWARE...'), nl,
    separador, nl,
    hacer_todas_preguntas,
    separador,
    write(' Analizando tu perfil tecnologico...'), nl,
    separador,
    obtener_recomendaciones(Recomendaciones),
    mostrar_recomendaciones(Recomendaciones),
    nl, linea,
    write(' Gracias por consultar al Asesor Tecnologico.'), nl,
    write(' Para evaluar otro perfil escribe: iniciar.'), nl,
    linea, nl.


% =================================================================
% SECCION 12: CONSULTAS AUXILIARES
% =================================================================

% Ver los detalles de un telefono en especifico
ver_perfil(Dispositivo) :-
    nombre_dispositivo(Dispositivo, Nombre),
    format('~nFicha Tecnica de: ~w~n', [Nombre]),
    separador,
    write('   Atributos principales:'), nl,
    forall(dispositivo_atributo(Dispositivo, A), format('     - ~w~n', [A])),
    write('   Puntos clave:'), nl,
    forall(especificacion(Dispositivo, Esp), format('     * ~w~n', [Esp])), nl.

% Ver el catalogo completo
listar_celulares :-
    nl, write('Catalogo de Dispositivos en el Sistema:'), nl,
    forall(dispositivo(C), (nombre_dispositivo(C, N), format('   - ~w~n', [N]))).

% Buscar por caracteristica
celulares_con_atributo(Atributo) :-
    format('~nDispositivos que cuentan con la caracteristica "~w":~n', [Atributo]),
    forall((dispositivo_atributo(C, Atributo), nombre_dispositivo(C, N)), format('   * ~w~n', [N])).