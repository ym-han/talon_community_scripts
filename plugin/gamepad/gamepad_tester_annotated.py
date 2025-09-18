#!/usr/bin/env python3
"""
Script to create an annotated version of gamepad_tester.png showing button mappings.
Run this to generate gamepad_tester_annotated.png
"""

from PIL import Image, ImageDraw, ImageFont
import os

def create_annotated_gamepad():
    # Load the original image
    script_dir = os.path.dirname(os.path.abspath(__file__))
    input_path = os.path.join(script_dir, "gamepad_tester.png")
    output_path = os.path.join(script_dir, "gamepad_tester_annotated.png")
    
    img = Image.open(input_path)
    draw = ImageDraw.Draw(img)
    
    # Try to use a system font, fallback to default
    try:
        font = ImageFont.truetype("/System/Library/Fonts/Helvetica.ttc", 12)
        small_font = ImageFont.truetype("/System/Library/Fonts/Helvetica.ttc", 10)
    except:
        font = ImageFont.load_default()
        small_font = font
    
    # Color for text
    text_color = "red"
    
    # Shoulder buttons (top)
    draw.text((100, 45), "L1 (left_shoulder)", fill=text_color, font=small_font)
    draw.text((100, 55), "Go back", fill=text_color, font=small_font)
    
    draw.text((600, 45), "R1 (right_shoulder)", fill=text_color, font=small_font)
    draw.text((600, 55), "Go forward", fill=text_color, font=small_font)
    
    # Triggers (not visible but labeled)
    draw.text((80, 25), "L2 Trigger", fill=text_color, font=small_font)
    draw.text((80, 35), "Scroll up", fill=text_color, font=small_font)
    
    draw.text((620, 25), "R2 Trigger", fill=text_color, font=small_font)
    draw.text((620, 35), "Scroll down", fill=text_color, font=small_font)
    
    # D-pad (left side)
    draw.text((100, 240), "D-pad", fill=text_color, font=font)
    draw.text((80, 255), "Mouse jump directions", fill=text_color, font=small_font)
    
    # ABXY buttons (right side) - these are the "compass" buttons
    draw.text((650, 240), "ABXY Buttons", fill=text_color, font=font)
    draw.text((600, 255), "North: Left drag", fill=text_color, font=small_font)
    draw.text((720, 285), "East: Ctrl+click", fill=text_color, font=small_font)
    draw.text((600, 315), "South: Right drag", fill=text_color, font=small_font)
    draw.text((540, 285), "West: Left drag", fill=text_color, font=small_font)
    
    # Select/Start buttons (center)
    draw.text((300, 400), "Select", fill=text_color, font=small_font)
    draw.text((300, 410), "(unused)", fill=text_color, font=small_font)
    
    draw.text((480, 400), "Start", fill=text_color, font=small_font)
    draw.text((480, 410), "Toggle speech", fill=text_color, font=small_font)
    
    # Analog sticks
    draw.text((200, 580), "Left Stick (L3)", fill=text_color, font=small_font)
    draw.text((200, 590), "Scrolling", fill=text_color, font=small_font)
    draw.text((180, 600), "Click: Toggle slow scroll", fill=text_color, font=small_font)
    
    draw.text((520, 580), "Right Stick (R3)", fill=text_color, font=small_font)
    draw.text((520, 590), "Mouse movement", fill=text_color, font=small_font)
    draw.text((500, 600), "Click: Toggle slow mouse", fill=text_color, font=small_font)
    
    # Key mappings summary
    draw.text((50, 750), "Key Mappings Summary:", fill="blue", font=font)
    draw.text((50, 770), "• gamepad_press_south → Right mouse drag (button on bottom of ABXY)", fill="black", font=small_font)
    draw.text((50, 785), "• gamepad_press_north → Left mouse drag (button on top of ABXY)", fill="black", font=small_font)
    draw.text((50, 800), "• gamepad_press_east → Ctrl+click (button on right of ABXY)", fill="black", font=small_font)
    draw.text((50, 815), "• gamepad_press_west → Left mouse drag (button on left of ABXY)", fill="black", font=small_font)
    
    img.save(output_path)
    print(f"Annotated gamepad image saved to: {output_path}")

if __name__ == "__main__":
    create_annotated_gamepad()