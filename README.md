# Banc de mémoire

  ![image](https://github.com/yoboujon/memory_file/assets/80280962/a9fc3fba-c9fc-4597-b7a3-30122237c86f)

  
Architecture contenant deux mémoires : une mémoire pour les données et une mémoire pour les instructions.
- **Entrées/Sorties :**
  - Entrées :
    - `@A(3:0)` : Adresse de la mémoire des données (4 bits).
    - `@B(3:0)` : Adresse de la mémoire des instructions (4 bits).
    - `DATA(7:0)` : Données à écrire dans la mémoire des données (8 bits).
    - `CLK` : Signal d'horloge.
    - `RST` : Signal de réinitialisation.
    - `@W(3:0)` : Adresse d'écriture pour la mémoire des données (4 bits).
    - `QA(7:0)` : Données lues depuis la mémoire des données (8 bits).
    - `QB(7:0)` : Données lues depuis la mémoire des instructions (8 bits).
    - `W` : Signal de sélection d'écriture dans la mémoire des données.
  - Sorties :
    - Aucune sortie spécifiée.

- **Mémoire des données :**
  - La mémoire des données permet un accès en lecture ou en écriture.
  - L'adresse de la zone mémoire est fournie par l'entrée `@`.
  - Pour réaliser une lecture, `RW` doit être positionné à 1.
  - Pour réaliser une écriture, `RW` doit être positionné à 0. Dans le cas d'une écriture, le contenu de l'entrée `IN` est copié dans la mémoire à l'adresse `@`.
  - Le signal de reset, `RST`, permet d'initialiser le contenu de la mémoire à 0x00.
  - Les opérations de lecture, d'écriture et de reset se font synchrones avec l'horloge `CLK`.

- **Mémoire des instructions :**
  - La mémoire des instructions a une structure simplifiée et s'apparente à une ROM.
  - Le programme à exécuter par le microprocesseur est stocké dans cette mémoire au préalable.
  - À l'exécution, toute modification du contenu de cette mémoire est empêchée.
  - La lecture se fait synchrone avec l'horloge `CLK`.
 
