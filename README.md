Albero 2-3-4
------------------------------------------------------------------

Implementazione e rappresentazione grafica di un albero 2-3-4

Ambiente di sviluppo: processing

------------------------------------------------------------------

Definizione:

Un albero 2-3-4 è un albero in cui:
- ogni nodo contiene 1, 2 oppure 3 valori (tipo 2, tipo 3, tipo 4)
- ogni nodo interno con i valori ha i + 1 figli
- è bilanciato
- è ordinato

In particolare, se un nodo ha i valori, definisce i + 1 intervalli. Gli eventuali figli di questo nodo saranno ordinati, 1 figlio per ogni intervallo.

Esempio:

Un nodo interno con due valor1, 3 e 5 avrà tre figli: f1, f2 ed f3. 
Se valore ∈ N e indicando con [fi] i valori contenuti nel nodo fi avremo: [f1] ∈ [0, 3), [f2] ∈ (3, 4) e [f3] ∈ (3, +∞).

Operazioni:

1) Inserimento

   (work in progress)
