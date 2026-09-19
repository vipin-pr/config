# Tmux Shortcuts Documentation

## Prefix Key
- `Ctrl+k` → New tmux prefix (replaces `Ctrl+b`)

---

## Windows
- `Ctrl+k + n` → New window (in current path)  
- `Ctrl+k + j` → Next window
- `Ctrl+k + h` → Previous window 
- `Ctrl+k + w` → List all windows  
- `Ctrl+k + r` → Rename current window  
- `Ctrl+k + e` → Close current window (confirmation y/n)  

### Direct Window Selection
- `Ctrl+j` → Next window (no prefix needed)  

---

## Panes
- `Alt + ←` → Move to left pane  
- `Alt + ↓` → Move to pane below  
- `Alt + ↑` → Move to pane above  
- `Alt + →` → Move to right pane  
- `Ctrl+k + y` → Toggle sync panes  
- `Ctrl+k + z` → Toggle zoom for the current pane  
- `Ctrl+k + -` → Split pane horizontally (top/bottom)  
- `Ctrl+k + |` → Split pane vertically (left/right)    

---

## Swap Windows
- `Ctrl+Shift+Left` → Swap current window with previous  
- `Ctrl+Shift+Right` → Swap current window with next  

---

## Copy Mode & Search
- `Ctrl+f` → Enter copy mode and start search  

---

## Reload Config
- `Ctrl+o` → Reload `.tmux.conf`  

---

- `Ctrl+z` → Toggle zoom for current pane

---

## Mouse & Scrolling
- Mouse support enabled (`set -g mouse on`)  
- Scroll in panes using mouse wheel  
- Click to select and copy text  

---

## Clipboard
- System clipboard integration enabled (`set-clipboard on`)  

---

## Status Bar
- Position: bottom  
- Background color: `colour233`  
- Foreground color: `white`  
- Centered alignment  
- Left status: current Git branch only (updates automatically if in a Git repo)  
- Right status: weekday + date + time (`%a %d-%b-%y %H:%M`)  
- Current window style: black text on green background  
- Status bar refresh interval: 2 seconds  

---

## Notes
- History limit: 40000 lines  
- 256-color support enabled  
- Alt + arrow keys and Vim-like keys improve pane navigation  
- Keybindings override some tmux defaults (e.g., `m` now resizes pane up instead of mark-pane)  
- `Ctrl+k + z` toggles zoom for the current pane  
- Left status only shows Git branch when in a Git repository  
