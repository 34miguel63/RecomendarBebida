% recomendador_bebidas.pl
% Sistema experto simple en Prolog que recomienda una bebida
% según la hora del día y el clima.

% Hechos: definición de horas del día
mañana(Hora) :- Hora >= 6, Hora =< 11.
tarde(Hora)  :- Hora >= 12, Hora =< 18.
noche(Hora)  :- (Hora >= 19, Hora =< 23) ; (Hora >= 0, Hora =< 5).

% Hechos: tipos de clima
clima_calido.
clima_frio.

% Reglas de recomendación
recomendar_bebida(Hora, Clima, Bebida) :-
    mañana(Hora),
    Clima = calido,
    Bebida = 'Jugo de naranja fresco'.

recomendar_bebida(Hora, Clima, Bebida) :-
    mañana(Hora),
    Clima = frio,
    Bebida = 'Café caliente'.

recomendar_bebida(Hora, Clima, Bebida) :-
    tarde(Hora),
    Clima = calido,
    Bebida = 'Agua de limón con hielo'.

recomendar_bebida(Hora, Clima, Bebida) :-
    tarde(Hora),
    Clima = frio,
    Bebida = 'Té caliente'.

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