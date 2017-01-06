#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Demo for presenting audio stimuli with Psychopy
Psychopy Tutorial by Monica Li, 10-18-2016
"""

### IMPORTANT:
### Under psychopy preferences/general
### (1) change the audio driver to "portaudio" (otherwise the program won't stop running when it's done)
### (2) change the audio library to "pygame" (otherwise the audio won't stop playing when the video stops)

# set up current folder path
parent_dir = "/Users/mli/Desktop/psychopy-tutorial/"

# load Psychopy modules for visual stimuli, audio stimuli and clock
from psychopy import visual, core, sound

# set up the window where the stimuli will be presented on
win = visual.Window(size = [800,500],
                    color = "white",
                    fullscr = False,
                    units = "pix")

# set up the image stimulus you want to present
happy_img = visual.ImageStim(win, pos = [0,0],
                    size = [500,500],
                    image = parent_dir + "stim/happy.jpg")

# set up the audio stimulus you want to play
laugh_wav = sound.SoundPyo(parent_dir + "stim/baby_laugh.wav",
                            start = 0, stop = -1)

# "draw" the stimulus to "the back of" the window
happy_img.draw()

# present the stimulus
win.flip()

# play audio as soon as the image is presented
laugh_wav.play()

# the stimulus will be presented for 5 seconds
core.wait(5)

### close everything
win.close()
core.quit()
