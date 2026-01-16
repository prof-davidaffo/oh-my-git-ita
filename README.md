<img src="https://github.com/git-learning-game/oh-my-git/blob/main/images/oh-my-git.png" width="400">

**Oh My Git!** e un gioco open source per imparare Git!

## Gioca!

Puoi scaricare i binari per Linux, macOS e Windows [da itch.io](https://blinry.itch.io/oh-my-git)!

## ℹ️ Nota sullo stato di manutenzione

bleeptrack e blinry hanno sviluppato Oh My Git! nel 2020/2021, con sei mesi di finanziamento dal Prototype Fund.
Al momento il progetto e in modalita di bassa manutenzione, e non abbiamo molto tempo da dedicargli.

Possiamo rivedere e integrare correzioni semplici, ma **per favore abbi pazienza con noi: potrebbe volerci molto tempo,**
specialmente per cambiamenti piu grandi.

Se vuoi lavorare su una modifica importante, ti consigliamo di contattarci prima di iniziare,
cosi possiamo discutere insieme l'approccio migliore. Grazie per l'interesse a contribuire!

## Segnala bug!

Se qualcosa non funziona o sembra rotto, faccelo sapere! Puoi descrivere il problema [nel nostro issue tracker](https://github.com/git-learning-game/oh-my-git/issues).

## Crea il tuo livello!

Vuoi creare il tuo livello? Ottimo! Ecco come fare:

1. Scarica l'ultima versione del motore di gioco [Godot **3**](https://godotengine.org/download/3.x). Godot 4 non e ancora supportato.
1. Clona questo repository.
1. Avvia il gioco – il modo piu semplice e eseguire `godot scenes/main.tscn` dalla directory del progetto.
1. Prendi un po' di confidenza con i livelli gia presenti.
1. Dai un'occhiata alla directory `levels`. E divisa in capitoli, e ogni livello e un file.
1. Fai una copia di un livello esistente o inizia a scriverne uno nuovo. Vedi la documentazione del formato sotto.
1. Scrivi e testa il tuo livello. Se ti piace il risultato, sentiti libero di inviarcelo con una pull request! <3

### Formato del livello

```
title = This is the level's title

[description]

This text will be shown when the level starts.

It describes the task or puzzle the player can solve.

[cli]

(optional) This text will be shown below the level description in a darker color.

It should give hints to the player about command line usage and also maybe some neat tricks.

[congrats]

This text will be shown after the player has solved the level.

Can contain additional information, or bonus exercises.

[setup]

# Bash commands that set up the initial state of the level. An initial
# `git init` is always done automatically. The default branch is called `main`.

echo You > people_who_are_awesome
git add .
git commit -m "Initial commit"

[win]

# Bash commands that check whether the level is solved. Write these as if you're
# writing the body of a Bash function. Make the function return 0 if it's
# solved, and a non-zero value otherwise. You can use `return`, and also, Bash
# functions return the exit code of the last statement, which sometimes allows
# very succinct checks. The comment above the win check will be shown in the game
# as win condition text.

# Check whether the file has at least two lines in the latest commit:
test "$(git show HEAD:people_who_are_awesome | wc -l)" -ge 2
```

A level can consist of multiple repositories. To have more than one, you can use sections like `[setup <name>]` and `[win <name>]`, where `<name>` is the name of the remote. The default name is "yours". All repositories will add each other as remotes. Refer to the [remote](levels/remotes) levels examples.

Un livello puo consistere di piu repository. Per averne piu di uno, puoi usare sezioni come `[setup <name>]` e `[win <name>]`, dove `<name>` e il nome del remote. Il nome predefinito e "yours". Tutti i repository si aggiungeranno tra loro come remoti. Vedi gli esempi dei livelli [remote](levels/remotes).

## Contribuisci al codice!

Per aprire il gioco nell'[editor Godot](https://godotengine.org), esegui `godot project.godot`. Poi puoi avviare il gioco con *F5*.

Sentiti libero di migliorare il codice e inviare pull request! C'e una eccezione: poiche i conflitti di merge nei file di scena di Godot tendono a essere difficili da risolvere, prima di lavorare su un file *\*.tscn* esistente, contattaci.

Per creare i tuoi binari, avrai bisogno dei [template di export](https://docs.godotengine.org/en/stable/getting_started/workflow/export/exporting_projects.html) di Godot, e di `zip`, `wget` e `7z`. Poi esegui `make`. Su Debian/Ubuntu, il binario di Godot si chiama `godot3`, potresti dover aggiornare i percorsi nel Makefile.

## Codice di Condotta

Abbiamo un [Codice di Condotta](CODE_OF_CONDUCT.md) che si applica a tutti i contributi al progetto, inclusi issue e pull request.

## Finanziamento

Abbiamo ricevuto finanziamenti per sei mesi nel 2020/2021 dal [Prototype Fund](https://www.prototypefund.de). Grazie!

<a href="https://www.bmbf.de/en/"><img src="https://www.dipf.de/en/images/BMBF_4C_M_e.jpg/@@download/image/BMBF_4C_M_e.jpg" alt="Logo of the German Ministry for Education and Research" height="100px"></a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href="https://prototypefund.de/en/"><img src="https://raw.githubusercontent.com/prototypefund/ptf-ci/main/logos/PrototypeFund-Icon.svg" alt="Logo of the Prototype Fund" height="100px"></a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href="https://okfn.de/en/"><img src="https://upload.wikimedia.org/wikipedia/commons/4/4d/Open_Knowledge_Foundation_Deutschland_Logo.svg" alt="Logo of the Open Knowledge Foundation Germany" height="100px"></a>

## Ringraziamenti

- suono "success" di [Leszek_Szarzy, CC0](https://freesound.org/people/Leszek_Szary/sounds/171670/)
- suono "swish" di [jawbutch, CC0](https://freesound.org/people/jawbutch/sounds/344408/)
- suono "swoosh" di [WizardOZ, CC0](https://freesound.org/people/WizardOZ/sounds/419341/)
- suono "poof" di [Saviraz, CC0](https://freesound.org/people/Saviraz/sounds/512217/)
- suono "buzzer" di [Loyalty_Freak_Music, CC0](https://freesound.org/people/Loyalty_Freak_Music/sounds/407466/)
- suono "typewriter_ding" di [_stubb, CC0](https://freesound.org/people/_stubb/sounds/406243/)

## Licenza

[Blue Oak Model License 1.0.0](LICENSE.md) – una [moderna alternativa](https://writing.kemitchell.com/2019/03/09/Deprecation-Notice.html) alla licenza MIT. E una lettura piacevole! :)
