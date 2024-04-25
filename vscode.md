<!-- vscode-markdown-toc -->

-   1. [TODO](#todo)
-   2. [Required plugins](#required-plugins)
-   3. [Current setup](#current-setup)
    -   3.1. [Core \<Leader\> shortcuts](#core-<leader>-shortcuts)
    -   3.2. [VSCode specific](#vscode-specific)
    -   3.3. [Vim specific](#vim-specific)
    -   3.4. [Vim Mode Switching](#vim-mode-switching)
    -   3.5. [Vim Command Mode](#vim-command-mode)
    -   3.6. [Vim Navigation](#vim-navigation)

<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->

# VSCode shortcuts

## 1. <a name='todo'></a>TODO

-   Look at all fuzzy finder stuffs -> # or > command, default file, etc.
-   Look at supported vim macros

## 2. <a name='required-plugins'></a>Required plugins

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

## 3. <a name='current-setup'></a>Current setup

### 3.1. <a name='core-\<leader\>-shortcuts'></a>Core \<Leader\> shortcuts

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

### 3.2. <a name='vscode-specific'></a>VSCode specific

| Shortcut                   | Description                   |
| -------------------------- | ----------------------------- |
| `cmd + '`                  | Toogle Terminal               |
| `cmd + Left OR Right`      | Select Tab left or right      |
| `cmd + Up OR Down`         | Increase editor font size     |
| `cmd + [0-9]`              | Move to pane number           |
| `opt + Up or Down`         | Move selected code Up or Down |
| `opt + Shift + Up or Down` | Copy current line Up or Down  |

### 3.3. <a name='vim-specific'></a>Vim specific

| Shortcut         | Mode | Description                            |
| ---------------- | ---- | -------------------------------------- |
| `ESC`            | I    | Execute :nohl to remove vim search hl  |
| `gc OR gC`       | N    | Comment a line or a block              |
| `s`              | N    | search via easymotion                  |
| `S`              | N    | search via leap plugin                 |
| `gd`             | N    | Jump to definition                     |
| `af`             | V    | Increasingly select more text          |
| `K`              | N    | Definition of the keyword under cursor |
| `>` or `<`       | N,V  | Indent Right / Left                    |
| `<Ctrl>d` or `u` | N    | Scoll Up or Down and center the cursor |

### 3.4. <a name='vim-mode-switching'></a>Vim Mode Switching

| Shortcut  | Description                          |
| --------- | ------------------------------------ |
| `i`       | Enter Insert mode                    |
| `:`       | Enter Command mode                   |
| `R`       | Enter Replace mode                   |
| `v`       | Enter Visual mode (hilighting)       |
| `V`       | Enter line Visual mode (hilighting)  |
| `<ctrl>v` | Enter Visual block mode (hilighting) |
| `esc`     | Return to Normal mode                |

### 3.5. <a name='vim-command-mode'></a>Vim Command Mode

Enter in <b>Command</b> mode by typing ':'

| Shortcut                    | Description                                        |
| --------------------------- | -------------------------------------------------- |
| `<Tab> <S-Tab>`             | Completion Up or Down                              |
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

### 3.6. <a name='vim-navigation'></a>Vim Navigation

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
