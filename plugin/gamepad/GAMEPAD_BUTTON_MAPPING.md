# Gamepad Button Mapping

Based on the gamepad tester image and the code in `gamepad.py`, here's what each button maps to:

## Visual Layout Reference
Looking at `gamepad_tester.png`, the controller has this layout:

```
    [L1]                                    [R1]
     ^                                       ^
     |                                       |
  (triggers L2/R2 above shoulder buttons)
  
  [select]  D-PAD     [start]     ABXY
            ╔═══╗                 ╔═══╗
            ║ ↑ ║                 ║ N ║
        ╔═══╬═══╬═══╗         ╔═══╬═══╬═══╗
        ║ ← ║   ║ → ║         ║ W ║   ║ E ║
        ╚═══╬═══╬═══╝         ╚═══╬═══╬═══╝
            ║ ↓ ║                 ║ S ║
            ╚═══╝                 ╚═══╝
            
     Left Stick (L3)           Right Stick (R3)
         ╔═══╗                     ╔═══╗
         ║ • ║                     ║ • ║
         ╚═══╝                     ╚═══╝
```

## Button Mappings

### ABXY Buttons (Right side - "Compass" buttons)
- **North** (`gamepad_press_north`) → **Left mouse drag** (mouse button 1)
- **South** (`gamepad_press_south`) → **Right mouse drag** (mouse button 2) ← **This answers your question!**
- **East** (`gamepad_press_east`) → **Ctrl+click** (left click with Ctrl held)
- **West** (`gamepad_press_west`) → **Left mouse drag** (mouse button 0)

### D-Pad (Left side)
- **D-pad Up** → Mouse jump up (moves cursor halfway to top edge)
- **D-pad Down** → Mouse jump down (moves cursor halfway to bottom edge)
- **D-pad Left** → Mouse jump left (moves cursor halfway to left edge)  
- **D-pad Right** → Mouse jump right (moves cursor halfway to right edge)

### Shoulder Buttons
- **L1** (`left_shoulder`) → **Go back** (browser/app back button)
- **R1** (`right_shoulder`) → **Go forward** (browser/app forward button)

### Triggers (Analog)
- **L2** (`l2`) → **Scroll up** (negative scroll)
- **R2** (`r2`) → **Scroll down** (positive scroll)

### Center Buttons
- **Select** → No action (skip)
- **Start** → **Toggle speech recognition**

### Analog Sticks
- **Left Stick** → **Scrolling** (X/Y axis scrolling)
- **Left Stick Click (L3)** → **Toggle slow scroll mode**
- **Right Stick** → **Mouse cursor movement** 
- **Right Stick Click (R3)** → **Toggle slow mouse movement mode**

## Answer to Your Question

**`gamepad_press_south` maps to the bottom button in the ABXY cluster (right side of controller).**

In the standard gamepad layout, this would typically be the "A" button on Xbox controllers or the "X" button on PlayStation controllers - it's the bottom button of the four-button cluster on the right side of the gamepad.