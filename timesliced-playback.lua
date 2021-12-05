-- timesliced-playback
-- a script for mpv.
-- Cycle through videos on the playlist, playing a slice of each before continuing
-- with the next one.
-- Currently hardcoded to three videos, and a three second timeslice.

i = 0 -- Index into playlist
t = {[0]=60, 60, 60} -- Start playback at 60 seconds to skip production logos

mp.register_event("file-loaded", function()
--    mp.msg.info("t[" .. i .. "]=" .. t[i])
    mp.command("seek " .. t[i] .. " absolute")
end)

mp.add_periodic_timer(3, function()
    t[i] = t[i] + 3 -- Add 3 seconds to current position
    i = i + 1
    if i == 3 then -- Assume 3 playlist entries
        i = 0
    end
    mp.set_property("playlist-pos", i)
end)
