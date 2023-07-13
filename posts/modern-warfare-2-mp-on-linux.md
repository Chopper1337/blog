<!--
.. title: Modern Warfare 2 MP on Linux
.. slug: modern-warfare-2-mp-on-linux
.. date: 2023-07-11 19:18:53 UTC+01:00
.. tags: linux, gaming, MW2, COD, Steam
.. category: 
.. link: 
.. description: 
.. type: text
-->

# 

These are some notes about Modern Warfare 2 Multiplayer on Linux. I talk about the performance of the game, note about proton versions and explain how to unlock the FPS and FOV.

## Warning

Later in this post I talk about using what is technically a cheat for MW2 MP. Please note that MW2 MP uses VAC and that I am not responsible in the case you get banned.

## Performance

First thing I'd like to note is one of the nice things about gaming on Linux.

On Windows, MW2 SP runs great. To lock 333 FPS on it is nothing. MP however is a very different story. MP runs terribly.

The most obvious barrier is the 91 FPS cap on the game which, as far as I know, was put in place to prevent players exploiting the physics related silly-ness that comes with getting higher frame rates.

For those who don't know: As is popular in many games from the late 2000s and early 2010s, some physics in MW2 are tied to the frame rate. In the majority of older Call of Duty games this is the case. If you run the game at a frame rate over 125, you will start to notice some differences in gravity, it will be lower. The higher the frame rate, the lower it goes until it suddenly has the opposite affect when you exceed 333 FPS. I have no idea why it inverts like this.

So 91 FPS is the cap for MP for that reason. What if we removed that cap? (More detail on how later)

On Windows, removing the FPS cap is barely even worthwhile as the game will just about average 125 FPS on most systems.

On Linux however, we can easily lock 250 FPS or higher on the same hardware. I don't know the cause of this but it's always nice to see. So, speaking of playing on Linux, Proton time.

## Getting it running

MW2 MP on Steam isn't as fussy as other COD games. Currently I play on Proton 8 but it should work on most versions.

In future I'll probably write a post about the weird behaviours of COD 4 and Black Ops on Steam.

## FPS Unlockers and FOV Changers

To unlock the FPS and change FOV, we have to jump through some more hoops than the Windows user.

### ProtonHax installation

The first of which is installing [ProtonHax](https://github.com/jcnils/protonhax).

Arch users can simple install `protonhax` from the [AUR](https://aur.archlinux.org/packages/protonhax)

Personally I am on the `-git` version. I guess try it if the regular one doesn't work for you.

Everyone else will be building it from source.

### ProtonHax setup

Now that you have that installed, go to the launch options of MW2 MP on Steam and add the following:

```
protonhax init %command%
```

Now when the game is launched, we can use ProtonHax to run other applications along side the game.

### ProtonHax Usage

First off, we need a tool to run along side the game. I will be using [mw2-fps-unlocker](https://github.com/andersblomqvist/mw2-fps-unlocker) which allows you to change the FPS limit and your FOV.

Run MW2 at least once if you haven't already. This will create the "compatdata" folder we need to place the executable in.

Navigate to the install directory of the game, default should be `/home/$USER/.local/share/Steam/steamapps/common/Call of Duty Modern Warfare 2/`

Then go up the directory tree til you're in the "steamapps" folder, from which you can navigate to the following directory: `steamapps/compatdata/10190/pfx/drive_c/`

`10190` here is the APPID of the game on Steam. If you visit the store page for a game, you will see the APPID in the URL.

Place your trainer executable in this "drive_c" folder.

Now you can launch the game.

In a terminal, run `protonhax ls` to verify the game is detected. You should see the APPID of the game in the output.

We can then run `protonhax run 10190 C:\YOUR-TRAINER-HERE.exe` and it should launch the trainer along side the game.
