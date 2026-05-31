% =================================================================
% Nombre: Loza Figueroa Pedro Alejandro
% Tema 3: Programación Lógica
% =================================================================

% ==========================================
% 1. HECHOS: DEFINICIÓN DE SEXOS
% ==========================================

% --- Hombres ---
hombre(roberto). % Abuelo paterno
hombre(antonio). % Abuelo materno
hombre(carlos).  % Padre
hombre(hugo).    % Tío paterno
hombre(diego).   % Hijo (Nieto)
hombre(mateo).   % Primo paterno
hombre(lucas).   % Primo materno

% --- Mujeres ---
mujer(carmen).   % Abuela paterna
mujer(elena).    % Abuela materna
mujer(sofia).    % Madre
mujer(laura).    % Tía materna
mujer(valeria).  % Hija (Nieta)
mujer(camila).   % Prima materna

% ==========================================
% 2. HECHOS: RELACIONES DIRECTAS (PROGENITORES)
% ==========================================

% --- Hijos de Roberto y Carmen (Lado Paterno) ---
padre(roberto, carlos).
padre(roberto, hugo).
madre(carmen, carlos).
madre(carmen, hugo).

% --- Hijos de Antonio y Elena (Lado Materno) ---
padre(antonio, sofia).
padre(antonio, laura).
madre(elena, sofia).
madre(elena, laura).

% --- Hijos de Carlos y Sofía (Núcleo Principal) ---
padre(carlos, diego).
padre(carlos, valeria).
madre(sofia, diego).
madre(sofia, valeria).

% --- Hijos de Hugo (Tío Paterno) ---
padre(hugo, mateo).

% --- Hijas de Laura (Tía Materna) ---
madre(laura, lucas).
madre(laura, camila).


% ==========================================
% 3. REGLAS LÓGICAS (DEDUCCIONES)
% ==========================================

% --- Progenitor (Padre o Madre indistintamente) ---
progenitor(P, H) :- padre(P, H).
progenitor(P, H) :- madre(P, H).

% --- Hijo / Hija ---
hijo(X, Y) :- hombre(X), progenitor(Y, X).
hija(X, Y) :- mujer(X), progenitor(Y, X).

% --- Hermano / Hermana ---
% Comparten el mismo progenitor y X no es igual a Y
hermano(X, Y) :- hombre(X), progenitor(P, X), progenitor(P, Y), X \= Y.
hermana(X, Y) :- mujer(X), progenitor(P, X), progenitor(P, Y), X \= Y.

% --- Abuelo / Abuela ---
% X es progenitor del progenitor de Y
abuelo(X, Y) :- hombre(X), progenitor(X, P), progenitor(P, Y).
abuela(X, Y) :- mujer(X), progenitor(X, P), progenitor(P, Y).

% --- Nieto / Nieta ---
nieto(X, Y) :- hombre(X), (abuelo(Y, X) ; abuela(Y, X)).
nieta(X, Y) :- mujer(X), (abuelo(Y, X) ; abuela(Y, X)).

% --- Tío / Tía ---
% X es hermano/a del progenitor de Y
tio(X, Y) :- hombre(X), progenitor(P, Y), hermano(X, P).
tia(X, Y) :- mujer(X), progenitor(P, Y), hermana(X, P).

% --- Primo / Prima ---
% Los progenitores de X y Y son hermanos
primo(X, Y) :- hombre(X), progenitor(PX, X), progenitor(PY, Y), (hermano(PX, PY) ; hermana(PX, PY)), X \= Y.
prima(X, Y) :- mujer(X), progenitor(PX, X), progenitor(PY, Y), (hermano(PX, PY) ; hermana(PX, PY)), X \= Y.

% --- Ancestro (Regla Recursiva) ---
% Caso base: Es tu progenitor directo
ancestro(X, Y) :- progenitor(X, Y).
% Caso recursivo: Es progenitor de alguien que es tu ancestro
ancestro(X, Y) :- progenitor(X, Z), ancestro(Z, Y).

% --- Descendiente ---
% Es la relación inversa del ancestro
descendiente(X, Y) :- ancestro(Y, X).