# niduc

## Moduły:
1. Y = generator(n) - generuje losowy ciąg bitów o długości n
2. Y = encoder(X, k) - dodaje do X bit parzystości co k bitów. Niepełną paczkę ignoruje.
3. Y = canal(X, sigma) - zamienia bity na napięcia. y - z zakłóceniami, z - bez
4. decoder(X, k) - odbiera ciąg bitów, porównuje z bitem parzystości i podejmuje decyzje, czy wysłać jeszcze raz


TODO:
- dopisać decoder
