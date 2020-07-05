/*Parte 1*/
vivenEnLaMansiónDreadbury(charles).
vivenEnLaMansiónDreadbury(agatha).
vivenEnLaMansiónDreadbury(carnicero).

odiaA(agatha,Persona):-
    vivenEnLaMansiónDreadbury(Persona),
    Persona \= carnicero.

odiaA(charles,Persona):-
    vivenEnLaMansiónDreadbury(Persona),
    not(odiaA(agatha,Persona)).

odiaA(carnicero,Persona):-
    vivenEnLaMansiónDreadbury(Persona),
    odiaA(agatha,Persona).

esMasRicoQueAgatha(agatha,Persona):-
    vivenEnLaMansiónDreadbury(Persona),
    not(odiaA(carnicero,Persona)).

quienMatoAAgatha(Asesino,Victima):-
    vivenEnLaMansiónDreadbury(Asesino),
    odiaA(Asesino,Victima),
    not(esMasRicoQueAgatha(Victima,Asesino)).
/*
 quienMatoAAgatha(Persona,agatha).
 Asesino = agatha
false
 */

/*
 Parte 2 
 	1-
    odiaA(_,milhouse).
	false
    
    2-
    odiaA(charles,Persona).
    false
    
    3-
    odiaA(Persona,agatha).
	Persona = tiaAgatha;
	Persona = carnicero.
    
    4-
    odiaA(Persona,Odiado).
    Odiado = charles,
	Persona = tiaAgatha
	Odiado = agatha,
	Persona = tiaAgatha
	Odiado = carnicero,
	Persona = charles
	Odiado = charles,
	Persona = carnicero
	Odiado = agatha,
	Persona = carnicero
	false
    
    5-
    odiaA(carnicero,_).
    true
 */
