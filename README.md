# timesliced-playback
a script for [mpv](https://mpv.io)



## What it does

When used with a playlist, it cycles through the videos on the playlist, and plays a slice
of each before continuing with the next one. It loops through the playlist and continues
playback where it left off on each video. This allows the viewer to take in multiple videos
in an interleaved mode, which can be appreciated for its peculiar cognitive effect.


## Usage

Put [timesliced-playback.lua](timesliced-playback.lua) in the mpv scripts directory
(Linux: `~/.config/mpv/scripts`).

Use with this command line:

```shell
mpv --fs --osd-color=1/0 --osd-border-color=1/0 --script timesliced-playback --playlist=<PLAYLIST_FILE>
```

## Current limitations

- Some things that are hardcoded:
  - Number of playlist entries (3)
  - Timeslice length (3 seconds)
  - Start playback at 0:01:00, to skip production logos etc.

 