# Gruppe 242
Medlemmer: Aurora Karlsen, Markus Wathle og Amund Berge

## Oppskrift på hvordan kjøre programmet
- Eksempel data

## Output fra brukstilfellene

1. 
2. 
3. 
4. 
5. 
6. 
7. 
8. 

## Endringer i databasen

1. Den nye oppgavetekstnen gjorde det nødvendlig å legge til radkode som attributt i Rad entiteten fordi oppgaven spessifiserer at setekonfigurasjonen må inneholde bokstavkode som del av radkoden. Vi indikerer midtgangen med en X. For eksempel vil 'ABXCD' si at en rad har setene A og B så kommer midtgangen og så C og D.
2. I oppgaveteksten står det at en flyrute skal ha en oppstartsdato og en eventuell sluttdato derfor har vi satt oppstartsdato som DATE NOT NULL og sluttdato som DATE. Vi tolket dette som at alle flyruter må ha en oppstartsdato. Siden oppgaven ikke oppgir en oppstartsdato må vi endre typen for oppstartsdato fra DATE NOT NULL til DATE.
