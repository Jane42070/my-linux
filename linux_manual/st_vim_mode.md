# Vim Browse
### Description
- This patch offers the possibility to move through the terminal history,search for strings and use VIM-like motions, operations and quantifers.

### Default Behavior:
##### The default behavior listed below can be adapted:
#### Enter Vim Browse Mode:
- Alt + c
#### Operations in Vim Browse Mode:
- Enter Visual Mode: V/v
- Enter Yank Mode: Y

#### Motions in Vim Browse Mode:
- Basic motions: <font size=3 face="monospace">j, k, h, l, H, M, L, 0, $</font> like in Vim
- Word Move operators: <font size=3 face="monospace">w, W, e, E, b, B</font> similar to VIM
- Search operations: <font size=3 face="monospace">/, ?, n, N</font> for forward / backward search
- Jump to the cursor position prior to entering Vim Browse Mode: G
- Repeat last command string: .
- In Visual Mode v: use `t` to toggle block selection mode
- Commands like `yim` and `ya` are implemented
- `<Ctrl>f`(one page `down`) `<Ctrl>b`(one page `up`)
-
