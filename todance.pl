% definición de los tiempos verbales
tiempo(presente).
tiempo(pasado).
tiempo(futuro).

% definición de las personas gramaticales 
persona(primera).
persona(segunda).
persona(tercera).

% definición de los números gramaticales 
numero(singular).
numero(plural).

% definición de la conjugación del verbo "dance"
bailar(presente,primera,singular,"dance").
bailar(presente,segunda,singular,"dance").
bailar(presente,tercera,singular,"dances").
bailar(presente,primera,plural,"dance").
bailar(presente,segunda,plural,"dance").
bailar(presente,tercera,plural,"dance").

bailar(pasado,primera,singular,"danced").
bailar(pasado,segunda,singular,"danced").
bailar(pasado,tercera,singular,"danced").
bailar(pasado,primera,plural,"danced").
bailar(pasado,segunda,plural,"danced").
bailar(pasado,tercera,plural,"danced").

bailar(futuro,primera,singular,"will dance").
bailar(futuro,segunda,singular,"will dance").
bailar(futuro,tercera,singular,"will dance").
bailar(futuro,primera,plural,"will dance").
bailar(futuro,segunda,plural,"will dance").
bailar(futuro,tercera,plural,"will dance").

conjugar_verbo(Verbo,Tiempo,Persona,Numero,Conjugacion):- 
    tiempo(Tiempo),
    persona(Persona),
    numero(Numero),
    (Verbo="to dance" -> bailar(Tiempo,Persona,Numero,R), Conjugacion=R;
     Conjugacion=Verbo).