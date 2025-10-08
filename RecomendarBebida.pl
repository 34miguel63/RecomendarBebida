% recomendador_bebidas.pl
% Sistema experto simple en Prolog que recomienda una bebida
% seg�n la hora del d�a y el clima.

% Hechos: definici�n de horas del d�a
ma�ana(Hora) :- Hora >= 6, Hora =< 11.
tarde(Hora)  :- Hora >= 12, Hora =< 18.
noche(Hora)  :- (Hora >= 19, Hora =< 23) ; (Hora >= 0, Hora =< 5).

% Hechos: tipos de clima
clima_calido.
clima_frio.

% Reglas de recomendaci�n
recomendar_bebida(Hora, Clima, Bebida) :-
    ma�ana(Hora),
    Clima = calido,
    Bebida = 'Jugo de naranja fresco'.

recomendar_bebida(Hora, Clima, Bebida) :-
    ma�ana(Hora),
    Clima = frio,
    Bebida = 'Caf� caliente'.

recomendar_bebida(Hora, Clima, Bebida) :-
    tarde(Hora),
    Clima = calido,
    Bebida = 'Agua de lim�n con hielo'.

recomendar_bebida(Hora, Clima, Bebida) :-
    tarde(Hora),
    Clima = frio,
    Bebida = 'T� caliente'.

recomendar_bebida(Hora, Clima, Bebida) :-
    noche(Hora),
    Clima = calido,
    Bebida = 'Agua natural'.

recomendar_bebida(Hora, Clima, Bebida) :-
    noche(Hora),
    Clima = frio,
    Bebida = 'Leche tibia con miel'.

% Predicado de consulta amigable
recomendar(Hora, Clima) :-
    recomendar_bebida(Hora, Clima, Bebida),
    format('Te recomiendo: ~w~n', [Bebida]).

% Ejemplo de uso:
% ?- recomendar(8, calido).
% Salida: Te recomiendo: Jugo de naranja fresco