% VIM

# VIM Tricks

## Selection

- **gv** : Repeat selection

- **f[a]** / **F[a]** : Go to next/prev character [a] in line:

- **"[n]** paste history numnber n. View all with _:reg_

- **C-R "** paste in command mode (can use register number instead of ")

## Navigation

- **C-o** go back

- **C-i** go forward

- **;** / **,** : Repeat last operation forward/backwards

## Diff

- **zR** expand all folds
- **za** contract folds

## Editing

C-n: Launches multi-cursor plugin

## Spellcheck

- **:setlocal spell spellang=en\_UK** turns spell checking on
- **]s**/**]s** prev/next misspelling
- **zg** add word to spellfile
- **z=** show suggestions
- **<C-x> s** show suggestions in insert mode

## Tags

More info using _:help tagstack_

- **C-]** search tag

- **C-t** jump back from tag

## Recording

- **q[e]** : starts recording on register "e"
- then do whatever commands you want
- **q** stops recording

## Vimdiff

- ]c          - next difference
- [c          - previous difference
- :diffupdate - rescan the files for differences

