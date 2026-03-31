[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-2972f46106e565e64193e422d61a12cf1da4916b45550586e14ef0a7c637dd04.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=23357839)
> **Come leggere questa guida:** per visualizzare correttamente il contenuto di questo file, nell'Explorer di VS Code fai **tasto destro** su `README.md` e scegli **"Open Preview"**.

---

# Verifica Bash - Comandi da terminale

## Informazioni generali

| | |
|---|---|
| **Durata** | 45 minuti |
| **Materiale consentito** | Nessuno (prova individuale) |
| **Modalità di consegna** | Commit e push del repository |

---

## Come iniziare

### 1. Crea l'ambiente di lavoro

Apri il terminale ed esegui:

```bash
cd /workspaces/*Lezione_Bash*
bash setup.sh
```

### 2. Attendi le istruzioni del docente

Il docente ti comunicherà la lettera della tua traccia (A, B, C o D).

### 3. Attiva la tua traccia

Esegui lo script corrispondente alla tua lettera:

```bash
./tracciaA.sh
```

oppure `./tracciaB.sh`, `./tracciaC.sh`, `./tracciaD.sh`

Questo script cancella gli esercizi delle altre tracce e mostra i tuoi.

### 4. Svolgi gli esercizi

Apri ogni file `esercizioXX.sh` nell'editor, leggi la traccia e **scrivi i comandi** nello spazio indicato.

### 5. Consegna

Al termine esegui:

```bash
git add .
git commit -m "Consegna verifica"
git push
```

---

## Struttura del repository

```
.
├── README.md           ← questa guida
├── setup.sh            ← crea l'ambiente e i file esercizio
├── tracciaA.sh         ← attiva la traccia A
├── tracciaB.sh         ← attiva la traccia B
├── tracciaC.sh         ← attiva la traccia C
├── tracciaD.sh         ← attiva la traccia D
├── esercizio01X.sh     ← esercizi (generati da setup.sh)
├── esercizio02X.sh
│   ...
├── esercizio08X.sh
├── esercizio09X.sh
└── ambiente/           ← cartella creata da setup.sh con file e dati
    ├── documenti/
    ├── immagini/
    ├── progetti/
    ├── archivio/
    ├── log/
    ├── dati/
    └── sandbox/        ← cartella dove puoi lavorare liberamente
```

---

## Argomenti della verifica

Gli esercizi coprono i seguenti argomenti, studiati nelle lezioni Bash01, Bash02 e Bash03:

| Esercizio | Argomento |
|-----------|-----------|
| 1 | Navigazione filesystem (`pwd`, `cd`, path assoluti/relativi) |
| 2 | Creazione struttura directory (`mkdir -p` con espansione `{}`) |
| 3 | Permessi (`ls -l`, `chmod` simbolico) |
| 4 | Copia, spostamento, rinomina (`cp`, `mv`) |
| 5 | Wildcard e reindirizzamento (`*`, `>`, `>>`, `head`, `tail`) |
| 6 | Pipeline e grep (`\|`, `grep`, `wc -l`, `sort`, `uniq`) |
| 7 | Ricerca file e testo (`find`, `grep -rn`, `sed`) |
| 8 | Estrazione dati da CSV (`awk -F`, filtri e formattazione) |
| 9 | Espressioni regolari con grep (`grep -E`, metacaratteri, ancore, alternativa `\|`) |

---

## Consigli

- Leggi bene ogni esercizio prima di scrivere i comandi
- Prova i comandi nel terminale, poi copialo nel file `.sh`
- Se combini qualche guaio con l'ambiente, rilancia `bash setup.sh`
- Usa `ls -l` per verificare le operazioni su file e permessi
- Ricorda: `>` sovrascrive, `>>` aggiunge in coda

---

## Riepilogo comandi utili

| Comando | Descrizione |
|---------|-------------|
| `pwd` | Mostra la directory corrente |
| `ls`, `ls -l`, `ls -a` | Elenca file (con dettagli, con nascosti) |
| `cd <percorso>` | Cambia directory |
| `cd ..` / `cd ~` / `cd -` | Su di un livello / home / precedente |
| `mkdir -p <percorso>` | Crea directory (anche annidate) |
| `rm <file>` / `rm -r <dir>` | Elimina file / directory ricorsiva |
| `cp <src> <dest>` / `cp -r` | Copia file / directory |
| `mv <src> <dest>` | Sposta o rinomina |
| `cat`, `head -n N`, `tail -n N` | Visualizza file / prime N / ultime N righe |
| `echo "testo" > file` | Scrive testo in un file |
| `echo "testo" >> file` | Aggiunge testo a un file |
| `chmod u+x file` | Aggiunge esecuzione al proprietario |
| `grep "pattern" file` | Cerca righe con pattern |
| `grep -E "p1\|p2"` | Cerca con pattern alternativi (regex) |
| `grep -v` / `grep -c` / `grep -n` | Inverti / conta / mostra numero riga |
| `grep -r "pattern" dir/` | Cerca ricorsivamente |
| `wc -l` | Conta righe |
| `sort` / `uniq` | Ordina / rimuovi duplicati |
| `find <dir> -name "*.ext"` | Trova file per nome |
| `find <dir> -type f\|d` | Trova solo file o solo directory |
| `sed 's/old/new/g' file` | Sostituisce testo |
| `sed -i 's/old/new/g' file` | Sostituisce testo nel file (in-place) |
| `awk -F',' '{print $2}' file` | Estrae il 2° campo CSV |
| `awk 'NR > 1 && $5 >= 8'` | Filtra righe con condizione |

---

## Espressioni regolari

### Metacaratteri

| Simbolo | Significato | Esempio | Cosa matcha |
|---|---|---|---|
| `.` | Un carattere qualsiasi | `c.sa` | `casa`, `cosa`, `c3sa` |
| `*` | Zero o più ripetizioni del precedente | `ab*c` | `ac`, `abc`, `abbc`, `abbbc` |
| `+` | Una o più ripetizioni del precedente | `ab+c` | `abc`, `abbc` (non `ac`) |
| `?` | Zero o una ripetizione del precedente | `colou?r` | `color`, `colour` |
| `[...]` | Uno dei caratteri elencati | `[aeiou]` | una vocale |
| `[^...]` | Qualsiasi carattere **tranne** quelli elencati | `[^0-9]` | un non-digit |
| `^` | Inizio della riga | `^Errore` | righe che iniziano con "Errore" |
| `$` | Fine della riga | `\.txt$` | righe che finiscono con ".txt" |
| `\d` | Una cifra (equivale a `[0-9]`) | `\d{3}` | tre cifre |
| `\w` | Un carattere "parola" (lettera, cifra, `_`) | `\w+` | una o più lettere/cifre |
| `{n}` | Esattamente n ripetizioni | `[0-9]{4}` | quattro cifre |
| `{n,m}` | Da n a m ripetizioni | `[0-9]{2,4}` | da due a quattro cifre |
| `(...)` | Gruppo (per raggruppare sotto-pattern) | `(ab)+` | `ab`, `abab`, `ababab` |
| `\|` | Alternativa (OR) | `gatto\|cane` | `gatto` oppure `cane` |

### Wildcards shell vs Regex

| | Wildcards (shell) | Regex |
|---|---|---|
| `*` | "qualsiasi sequenza di caratteri" | "zero o più ripetizioni del carattere precedente" |
| `?` | "esattamente un carattere" | "zero o una ripetizione del precedente" |
| Dove si usano | `ls`, `cp`, `mv`, `find -name` | `grep`, `sed`, `awk`, linguaggi |

Non confonderle! Quando usi `find -name "*.txt"`, il `*` è una wildcard. Quando usi `grep "^[0-9].*txt$"`, il `.*` è una regex (`.` = qualsiasi carattere, `*` = ripetuto zero o più volte).

> ⚠️ Il punto `.` nelle regex significa "qualsiasi carattere". Per cercare un punto letterale usa il backslash: `\.`

### Esempi di pattern

```
^[A-Z]                → righe che iniziano con una lettera maiuscola
[0-9]{1,3}\.[0-9]     → un numero da 1 a 3 cifre, punto, una cifra (es: "192.1", "7.5")
^$                    → righe vuote (inizio riga subito seguito da fine riga)
[a-z]+@[a-z]+\.[a-z]  → pattern base di un indirizzo email
```
