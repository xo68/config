# Table of content

<!-- vscode-markdown-toc -->

-   [<u>Core \<Leader\> shortcuts</u>](#<u>core-<leader>-shortcuts</u>)
-   [<u>VSCode shortcuts</u>](#<u>vscode-shortcuts</u>)
-   [<u>Vim specifc shortcuts</u>](#<u>vim-specifc-shortcuts</u>)
-   [<u>Vim Mode Switching</u>](#<u>vim-mode-switching</u>)
-   [<u>Vim "Command" Mode</u>](#<u>vim-"command"-mode</u>)
-   [<u>Vim "Normal" mode - Navigation</u>](#<u>vim-"normal"-mode---navigation</u>)
-   [<u>Vim "Normal" mode - Editing</u>](#<u>vim-"normal"-mode---editing</u>)
-   [<u>Vim "Normal" mode - "g" shortcuts</u>](#<u>vim-"normal"-mode---"g"-shortcuts</u>)
-   [<u>Vim "Insert" Mode</u>](#<u>vim-"insert"-mode</u>)
-   [<u>Vim Macros</u>](#<u>vim-macros</u>)
-   [<u>Vim Tips</u>](#<u>vim-tips</u>)

<!-- vscode-markdown-toc-config
	numbering=false
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->

# <a name='<u>required-plugins</u>'></a><u>Required plugins</u>

-   Vim
-   Markdown Preview GitHub
-   Markdown TOC
-   Markdownling
-   Python: Better isort
-   Python: Black Formatter
-   Python: Pylance
-   Prettier code formatter
-   Lazygit for VSCode
-   Color Highlight
-   Error Lens
-   TODO Hilight
-   indent-rainbox
-   GitHub Theme
-   Gruvbox Theme
-   Material Icon Theme

# <a name='todo'></a><u>TODO</u>

-   Look at all fuzzy finder stuffs -> # or > or @ command, default file, etc.
-   Explore Spell checker (i.e. not yet implemented in vim plugin)

# Cheat Sheet

## <a name='<u>core-\<leader\>-shortcuts</u>'></a><u>Core \<Leader\> shortcuts</u>

> Leader key is space bar

| Shortcut            | Mode   | Description                             |
| ------------------- | ------ | --------------------------------------- |
| `<leader> + m + p`  | Normal | Markdown Preview side tab               |
| `<leader> + m + g`  | Normal | Markdown Generate TOC                   |
| `<leader> + p OR o` | Normal | open fuzzy finder, workbench quick open |
| `<leader> + v`      | Normal | Vertical split                          |
| `<leader> + h OR l` | Normal | Move to left of right split (hjkl)      |
| `<leader> + e`      | Normal | Explorer toggle                         |
| `<leader> + t`      | Normal | Terminal toggle                         |
| `<leader> + f`      | Normal | Fullscreen mode                         |
| `<leader> + a`      | Normal | ActivityBar toggle                      |
| `<leader> + g`      | Normal | Git LazyGit open in current tab         |

## <a name='<u>vscode-shortcuts</u>'></a><u>VSCode shortcuts</u>

| Shortcut                   | Description                   |
| -------------------------- | ----------------------------- |
| `cmd + '`                  | Toogle Terminal               |
| `cmd + Left OR Right`      | Select Tab left or right      |
| `cmd + Up OR Down`         | Increase editor font size     |
| `cmd + [0-9]`              | Move to pane number           |
| `opt + Up or Down`         | Move selected code Up or Down |
| `opt + Shift + Up or Down` | Copy current line Up or Down  |

## <a name='<u>vim-specifc-shortcuts</u>'></a><u>Vim specifc shortcuts</u>

| Shortcut         | Mode | Description                                       |
| ---------------- | ---- | ------------------------------------------------- |
| `ESC`            | I    | Custom: Execute :nohl to remove vim search hl     |
| `Q`              | N, X | Custom: Macro, remapping of 'Q' for smarter exec. |
| `s`              | N    | Custom: search via easymotion                     |
| `S`              | N    | Custom: search via leap plugin                    |
| `gc OR gC`       | N    | Comment a line or a block                         |
| `gd`             | N    | Jump to definition                                |
| `af`             | V    | Increasingly select more text                     |
| `K`              | N    | Definition of the keyword under cursor            |
| `>` or `<`       | N,V  | Indent Right / Left                               |
| `<Ctrl>d` or `u` | N    | Scoll Up or Down and center the cursor            |

## <a name='<u>vim-mode-switching</u>'></a><u>Vim Mode Switching</u>

| Shortcut  | Description                          |
| --------- | ------------------------------------ |
| `i`       | Enter Insert mode                    |
| `:`       | Enter Command mode                   |
| `R`       | Enter Replace mode                   |
| `v`       | Enter Visual mode (hilighting)       |
| `V`       | Enter line Visual mode (hilighting)  |
| `<ctrl>v` | Enter Visual block mode (hilighting) |
| `ESC`     | Return to Normal mode                |

## <a name='<u>vim-"command"-mode</u>'></a><u>Vim "Command" Mode</u>

Enter in <b>Command</b> mode by typing ':'

| Shortcut                    | Description                                        |
| --------------------------- | -------------------------------------------------- |
| `:q`                        | 'Quit' - will fail in case of unsaved changes      |
| `:q!`                       | 'Quit' - Force Quit (Discard unsaved changes)      |
| `:w`                        | 'Write' - Save current file                        |
| `:wa`                       | 'Write all' - Save all open files                  |
| `:wq` / `:x`                | 'Write & Quit' - Save current file & Quit          |
| `:e filename`               | 'Edit' - Open filename in current buffer           |
| `:[RANGE]s/FOO/BAR/[FLAGS]` | 'Substitue' FOO with BAR for the current line      |
| `:sp [file]` / `:vs [file]` | Split horizontal / vertical, optionnaly add a file |

| SUBSTITUTE RANGE | Description                                                 |
| ---------------- | ----------------------------------------------------------- |
| `%`              | Entire File                                                 |
| `’<,’>'`         | Current selection, default range in visual mode             |
| `25`             | Line 25                                                     |
| `25,50`          | Line 25 - 50                                                |
| `$`              | Last line; can be combined with other lines as in ‘50,$’    |
| `.`              | Current line; can be combined with other lines as in ‘.,50’ |

| SUBSTITUTE FLAGS | Description                 |
| ---------------- | --------------------------- |
| `g`              | Global, for the entire file |
| `i`              | Ignore case                 |
| `c`              | Confirm each subtitution    |

## <a name='<u>vim-"normal"-mode---navigation</u>'></a><u>Vim "Normal" mode - Navigation</u>

| Shortcut                  | Description                                                              |
| ------------------------- | ------------------------------------------------------------------------ |
| `h` / `j` / `k` / `l`     | Move left / down / up / right                                            |
| `H` / `M` / `L`           | Top / Middle / Bottom line on the screen                                 |
| `zz` / `zt` / `zb`        | Center / Top / Bottom this line                                          |
| `gg` / `G`                | First line / last line of the file                                       |
| `{` / `}`                 | Jump to the next or previous empty line (i.e paragraph jump)             |
| `e` / `b` / `w`           | End of the word / Beginning of the word / Beginning of the next word     |
| `:[+\|-][LINE]`           | Go To Line [LINE]. + or - to be used for relative lines                  |
| `[NUMBER]j` / `[NUMBER]k` | Go Up / Down [NUMBER] lines (i.e. useful with relative line numbers)     |
| `0` / [`^` or `_`]        | Beginning of the line / First white space of the line                    |
| `$`                       | End of the line                                                          |
| `%`                       | Move to matching parenthesis, bracket or curly brace                     |
| `f{c}` / `F{c}`           | Go forward / backward to character {c}                                   |
| `t{c}` / `T{c}`           | Go towards next / previous occurence of character {c} & stop before      |
| `;` / `,`                 | Repeat previous f, F, t, or T movement forward / backward                |
| `[COUNT]{` / `[COUNT]}`   | [COUNT] paragraphs backward / forward                                    |
| `ctrl-u` / `ctrl-d`       | Half-Page Up / Down                                                      |
| `ctrl-b` / `ctrl-f`       | Page Up / Down                                                           |
| `/text` / `n` / `N`       | Search - Search text (i.e. can contain regexp) / n - next / N - Previous |
| `*` / `#`                 | Search - Next / previous for the whole word under the cursor             |
| `m{c}`                    | Mark - Save current location in register {c}                             |
| `'{c}`                    | Mark - Go to the mark saved in register {c}                              |
| `[COUNT]gt` / `gT`        | Go to tab page [COUNT]                                                   |

<i> The left, right, up and down arrow keys can also be used to navigate. </i>

## <a name='<u>vim-"normal"-mode---editing</u>'></a><u>Vim "Normal" mode - Editing</u>

<p>Yank / Cut / Delete commands operate on the specified range,<br>
    - If in <b>Visual</b> mode, that range is the highlighted text <br>
    - If in <b>Normal</b> mode, that range is specified by a series of modifiers to the commands</p>

| Shortcut             | Description                                                                     |
| -------------------- | ------------------------------------------------------------------------------- |
| `i` / `I`            | 'Insert' Get into Insert mode / At the first white space of the line            |
| `a` / `A`            | 'Append' Get into Insert mode after the cursor / At the end of the line         |
| `r` / `R`            | 'Replace' Get into Replace mode for 1 character / for the entire line           |
| `x` / `X`            | 'Delete' forward / backward from current character                              |
| `u` / `Ctrl-R`       | Undo / Redo                                                                     |
| `o` / `O`            | create a line below / create a line above, and switch to Insert mode            |
| `C`                  | Change current line - Delete rest of the line and get into Insert mode          |
| `D`                  | Change current line - Delete rest of the line and stay in Normal mode           |
| `Y`                  | Yank current line - Copy rest of the line and stay in Normal mode               |
| `cc`                 | Change / Cut - Delete current line and get into Insert mode                     |
| `dd`                 | Delete - Delete entire line                                                     |
| `yy`                 | Yank - Copy the entire line get and stay in Normal mode                         |
| `P` / `p`            | Paste before the cursor / after the cursor                                      |
| `X` / `x`            | Delete character before the cursor / after the cursor                           |
| `cw`                 | Change / Cut Word - Delete end of the word and get into Insert mode             |
| `c4w`                | Change / Cut 4 Words - Delete end of the words, next 4 and get into Insert mode |
| `c4l`                | Change / Cut 4 Letters - Delete next 4 letters and get into Insert mode         |
| `ciw`                | Change / Cut In Word - Delete current word and get into Insert mode             |
| `ci(`                | Change / Cut Inside Parenthesis                                                 |
| `dw`                 | Delete Word - Delete end of the word and stay in Normal mode                    |
| `diw`                | Delete In Word - Delete current word and stay in Normal mode                    |
| `dip`                | Delete Inside Paragraph - Delete current Paragraph                              |
| `yw`                 | Yank Word - Copy end of the word and stay in Normal mode                        |
| `yiw`                | Yank In Word - Copy current word and stay in Normal mode                        |
| `xp`                 | Transpose current character                                                     |
| `.`                  | Repeat the last change that was made                                            |
| `[COUNT]<Ctrl-a\|x>` | Increment or Decrement the number under the cursor,optionnaly use COUNT         |

<p><i> (i)nner, (a)round, (w)ord, (s)entence,(l)etter, (p)aragraph </i></p>

## <a name='<u>vim-"normal"-mode---"g"-shortcuts</u>'></a><u>Vim "Normal" mode - "g" shortcuts</u>

| Shortcut          | Description                                                                |
| ----------------- | -------------------------------------------------------------------------- |
| `gj` / `gk`       | Move up/down in case of text spanning over multiple lines                  |
| `g$` / `g0`/ `g^` | Same as existing navigation shortcuts but operating for spanning text      |
| `gqq` / `gq`      | Transform spanning text to seperate lines (limit to 80 chars)              |
| `gJ` / `J`        | Join the current line and the line beneath it with no space / keep a space |
| `gU` / `gu`       | Uppercase / Lowercase (e.g. 'gUiw' -> full word under cursor in UPPERCASE) |
| `g~`              | Switching capitalization                                                   |
| `gUU` / `guu`     | Uppercase / Lowercase the entire line                                      |
| `gf`              | Open the file under the cursor in nvim in current window                   |
| `gv`              | Jump back to previouly seclected text and go back into 'Visual' mode       |
| `g&`              | Execute the previous substituion accross the entire file                   |

## <a name='<u>vim-"insert"-mode</u>'></a><u>Vim "Insert" Mode</u>

| Shortcut             | Description                      |
| -------------------- | -------------------------------- |
| `<Ctrl-o> {Command}` | Execute a command in Insert mode |

## <a name='<u>vim-macros</u>'></a><u>Vim Macros</u>

-   `q{0-9a-zA-Z"}`: Record into a particular register
-   `q`: Stop recording
-   `@{0-9a-z".=*+}`: Execute the content of the register
-   `@@`: Repeat the previous @{0-9a-z":\*}
-   `Q`: Repeat the last recorded register and move down

It is recommended to being with `_` or `^` when recording to start at the
beginning of the line and ease the execution of the recorded macro

In visual mode,

-   Select the text section
-   `:'<,'>norm @q` to execute the macro stored in `q` register

Recording a macro can be recursive

## <a name='<u>vim-tips</u>'></a><u>Vim Tips</u>

-   **While searching i.e.'/', how to jump between results live ?**<br>

    > Use \<ctrl-t> & \<ctrl-g> to move between next & previous match

-   **How to move in the <u>changelist</u> ?**

    > When making a change the cursor position is remembered.<br>
    > Use \<g;> & \<g,> to go to older & newer positions in the change list

-   **How to move in the <u>jumplist</u> ?**
    > So called jump commands that are stored in the jump list: <br>
    > "'", "`", "G", "/", "?", "n", "N", "%", "(", ")", "[[", "]]", "{", "}", ":s", ":tag", "L", "M", "H"<br>
    > Use \<ctrl-o> & \<ctrl-i> to go to older & newer positions in jump list
