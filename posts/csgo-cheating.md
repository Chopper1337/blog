<!--
.. title: CS Cheating
.. slug: cs-cheating
.. date: 2023-07-13 10:41:52 UTC+01:00
.. tags: gaming, linux, Steam, cheating, cs
.. category: 
.. link: 
.. description: 
.. type: text
-->

# 

# "*The purpose of a system is what it does*".

With the upcoming release of CS2, there is plenty of conversation around "VAC Live". Many people seem to think it'll be an improvement for CS2 over CSGO. Today I'll talk about why this probably is not the case.

Currently, in CSGO, there are only three requirements to cheat in a safe manner:

* Your cheat and loader of choice must not be detected

* You must not use features of the cheat which are known to lower "Trust", cause "Untrusted" bans or VAC bans.

* You must not rage every game.

These aren't difficult steps to follow, and this is intentional.

Valve essentially allow cheating in CSGO. Their entire system is designed in this way. 

## VAC

VAC, compared to any other AC, is a minimal attempt at detecting cheats in the "traditional" manner. It's very passive compared to other AC solutions and it's also safer to run due to it being user-mode and not kernel-mode. 

Personally, I like VAC as it isn't terribly invasive and can't crash my entire PC like Vanguard does.

VAC could do a better job with some effort: Despite the source code for many cheats being publicly available, such as [Osiris](https://github.com/danielkrupinski/Osiris), they still don't detect them. On Linux, any user can download, compile and inject Osiris with zero consequences. Unless they use detected features such as "No duck cooldown".

![VAC Module](https://de.nuke.ie/temp/7305758579172023-07-24_11-34-10.png)

What they've tried so far isn't much: Here's a [post](https://lwss.github.io/State-Of-Vac-linux-2020/) by [LWSS](https://github.com/LWSS/) about VAC on Linux as of 2020, it has gone essentially unchanged since.

Some interesting methods they've tried:

In an attempt to detect modified view angles, they added backup variants of the associated variables. The idea here was to store the original view angles in the backup and compare them to the current ones. In the case that a cheat has modified the original view angles, the values will no longer match and the player should be banned. The main issue with this attempt is that in a cheat, you can also update the backup view angle's associated variables, meaning this has been entirely circumvented. 

On Linux, a VAC module exists which runs `cat /proc/$(pidof csgo_linux64)/maps | grep AimTux` in order to "detect" [AimTux](https://github.com/AimTuxOfficial/AimTux). Note that to bypass this, you simply just rename the library before injection. It's like "detecting" if a file is malware by using the file name.


## Trust

The "[Trust](https://help.steampowered.com/en/faqs/view/00EF-D679-C76A-C185)" system isn't intended to ban players. This system exists to keep cheaters separate from legitimate players.

This implies that they would prefer let cheaters play with/against other cheaters.

Of course this system isn't perfect either. At the time of writing, when using [gamesense](https://gamesense.pub/) (among other cheats), you can rage and still have high trust.

## CS2

What makes people think this will be any different for CS2?

"VAC Live" is supposedly a more active system utilising the trained "VAC Net" AI to detect cheaters. See [this video](https://www.youtube.com/watch?v=BfCSOjfPQWc).

![The report dialog](https://de.nuke.ie/temp/1922173075572023-07-24_11-32-49.png)

In the video, a player reports another and the target is instantly banned. Some important things to note about this are that the cheater was barely getting kills and also that during the report, the final checkbox was highlighted in red.

The cheater having low kills is something of note because they may not have even been cheating in that match. The ban *could* have been a pending one from CSGO as Valve almost always delay bans to slow down the rate at which people can find out if a feature, cheat or loader is detected. In this case, "VAC Live" is nothing more than allowing players to give the ban a push to make it happen sooner.

The final checkbox being red is of note as it may indicate that it does more than just report. What first comes to mind is that it could run VAC modules on the target and ban accordingly. For the regular player, this would be about the most to expect from this new feature.

The expectation that "VAC Live" may be better at detecting cheats is not a good one to have. As explained earlier, Valve don't bet on detecting cheats.

## Conclusion

Cheating in CS2 will probably be the same as in CSGO. I don't see Valve dumping their work on non-invasive anti-cheat any time soon. "VAC Live" is not likely to change much for legitimate players or cheaters.
