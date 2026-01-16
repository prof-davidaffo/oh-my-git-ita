<img src="https://github.com/git-learning-game/oh-my-git/blob/main/images/oh-my-git.png" width="400">

**Oh My Git! (ITA)** è una traduzione non ufficiale del progetto originale.
Il progetto ufficiale è qui: https://github.com/git-learning-game/oh-my-git

Questo repository serve solo per la localizzazione italiana e non rappresenta il progetto ufficiale.

## Scarica la versione italiana

Le versioni italiane sono disponibili nelle release:
https://github.com/prof-davidaffo/oh-my-git-ita/releases/latest

## Gioca al gioco originale

Scarica i binari ufficiali per Linux, macOS e Windows da itch.io:
https://blinry.itch.io/oh-my-git

## Crea un livello (base)

1. Installa Godot **3**: https://godotengine.org/download/3.x
2. Clona questo repository.
3. Avvia il gioco con `godot scenes/main.tscn`.
4. Modifica o crea livelli nella cartella `levels`.

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

Un livello può consistere di più repository. Per averne più di uno, puoi usare sezioni come `[setup <name>]` e `[win <name>]`, dove `<name>` è il nome del remote. Il nome predefinito è "yours". Tutti i repository si aggiungeranno tra loro come remoti. Vedi gli esempi dei livelli [remote](levels/remotes).

## Licenza

[Blue Oak Model License 1.0.0](LICENSE.md)
