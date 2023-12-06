<!--
.. title: YouTube
.. slug: youtube
.. date: 2023-12-06 09:07:28 UTC
.. tags: privacy
.. category: 
.. link: 
.. description: 
.. type: text
-->

#

(This is a W.I.P post)

# How I use YouTube

As many already know, YouTube is highly flawed. You know it, I know it, Google know it. That's why, as of the past few months, YouTube has tried to be a bit more aggressive with advertising by attempting to block viewing videos if they detect you're using an ad blocker of some kind. Before this, they had also tried adding multiple 10 second ads before videos and for many years, ads have been put at various points of longer videos.

Of course, I would have never noticed this had it not made news on sites like [The Verge](https://www.theverge.com/2023/11/7/23950513/youtube-ad-blocker-crackdown-privacy-advocates-eu) and on YouTube itself. Why wouldn't I have noticed? Because I don't use YouTube.

Well, I say "I don't use YouTube" but I still watch YouTube videos. What I mean is that I haven't used [YouTube.com](https://youtube.com) to watch videos for probably years at this point. With that, I haven't watched an ad before or after a video, I haven't been blocked from watching videos, I haven't even watched any of the ads YouTubers add into their videos such as sponsorships, self promotion etc.

## How??

I use the following applications to watch YouTube videos:

On Desktop, I use [FreeTube](https://freetubeapp.io/) and on Android, I use [NewPipe](https://github.com/polymorphicshade/NewPipe).

Install them and that's it. Just export your subscriptions from YouTube, import them to these applications, change settings to your liking and you're done.

### Advantages

* No advertisements (At any point)
* Downloading of videos within the clients (audio and/or video)
* Open source software you can modify to your liking
* No cookies, fingerprinting, tracking etc.
* No algorithm to recommend videos you don't care about
* You can use any video player you like
* More choice in playback devices (lightweight clients)

Those are some of the common advantages between FreeTube and NewPipe. The individual clients have some of their own:

* FreeTube can be used with Invidious (which means you can have zero communication with Google services directly)
* NewPipe can run in the background (a "feature" you'd need to pay for in the official YouTube app.)
* NewPipe can stream from Soundcloud, Bandcamp, FramaTube and media.ccc.de
* FreeTube has profiles (you can create a profile for a particular group of channels for example)

For those with older Android devices, you're probably aware of how badly the official YouTube app runs on these devices (if it runs at all). NewPipe has no issues running on such devices. If it can still play videos, it's good enough.

I know someone who uses an old budget Huawei phone which is coming up on ten years old by now. This phone is unable to play YouTube videos as the old app is discontinued and the new app doesn't install. NewPipe works perfectly on this device and will keep it in service for the foreseeable future.

### Disadvantages

* No synchronisation between devices
* No interactions such as liking, commenting, reporting etc.
* No algorithm to recommend videos you don't care about

On NewPipe specifically, if you have a large number of subscriptions, refreshing the list to show new videos can take a few seconds.

Similarly, on FreeTube, having a large number of subscriptions forces the application to use RSS to retrieve the video list, which doesn't return the length of the video (Title and thumbnail are still present).

## Other options

These are only the apps *I* use for YouTube. There are plenty of other alternatives, particularly on Android:

* [GrayJay](https://grayjay.app/)
* [SkyTube](https://github.com/SkyTubeTeam/SkyTube)
* [LibreTube](https://libretube.dev/)

and probably more...

## Synchronisation

As mentioned in the disadvantages, none of these applications will automatically synchronise your subscriptions or playlists between them, but this isn't a big issue.

Personally, every now and then, I'll export my subscription from FreeTube in all formats it provides. I store these on my Nextcloud storage, which is synchronised between my devices. Then, on the rare occasion I decide to watch some YouTube on my phone, I'll import those subscriptions.

If I have subscribed to a new channel on NewPipe, I'll do the same.

NewPipe can also export all of its settings to one file. I used to do this every now and then but I've found settings I like and keep them backed up only for when I need to restore them.

## But this is stealing!!

It's not. If you enjoy the videos somebody creates, donate to them directly or buy something they sell.

## Conclusion

For me, this is the best experience I've had for watching YouTube videos. It's fast and also allows me to avoid the web browser. Having my subscriptions all in one file also allows for some portability too as these can be imported into other clients or YouTube frontends such as Invidious.

I don't expect many other people to adopt this method of watching YouTube videos and that's probably for the better. It's likely that YouTube wouldn't still exist if views weren't counted and viewers couldn't interact with videos or their creators. I'm sure there will always be some number of people who are willing to pay for YouTube or watch their ads. Computer illiteracy, I'd say, but they'll keep the site afloat for the (short) time it has left.
