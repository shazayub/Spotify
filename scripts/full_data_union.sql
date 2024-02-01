-- query to combine the by tables into one big table only keeping columns of interest

WITH combo AS 
(SELECT 
	ts, ms_played, spotify_track_uri, master_metadata_track_name, master_metadata_album_artist_name, master_metadata_album_album_name, spotify_episode_uri, episode_show_name, episode_name, reason_start, reason_end, shuffle, skipped
FROM dbo.[14_to_17]

UNION ALL

SELECT 
	ts, ms_played, spotify_track_uri, master_metadata_track_name, master_metadata_album_artist_name, master_metadata_album_album_name, spotify_episode_uri, episode_show_name, episode_name, reason_start, reason_end, shuffle, skipped
FROM dbo.[17_to_18]

UNION ALL

SELECT 
	ts, ms_played, spotify_track_uri, master_metadata_track_name, master_metadata_album_artist_name, master_metadata_album_album_name, spotify_episode_uri, episode_show_name, episode_name, reason_start, reason_end, shuffle, skipped
FROM dbo.[18_to_19]

UNION ALL

SELECT 
	ts, ms_played, spotify_track_uri, master_metadata_track_name, master_metadata_album_artist_name, master_metadata_album_album_name, spotify_episode_uri, episode_show_name, episode_name, reason_start, reason_end, shuffle, skipped
FROM dbo.[19_to_20]

UNION ALL

SELECT 
	ts, ms_played, spotify_track_uri, master_metadata_track_name, master_metadata_album_artist_name, master_metadata_album_album_name, spotify_episode_uri, episode_show_name, episode_name, reason_start, reason_end, shuffle, skipped
FROM dbo.[20_to_22]

UNION ALL

SELECT 
	ts, ms_played, spotify_track_uri, master_metadata_track_name, master_metadata_album_artist_name, master_metadata_album_album_name, spotify_episode_uri, episode_show_name, episode_name, reason_start, reason_end, shuffle, skipped
FROM dbo.[22_to_23]

UNION ALL

SELECT 
	ts, ms_played, spotify_track_uri, master_metadata_track_name, master_metadata_album_artist_name, master_metadata_album_album_name, spotify_episode_uri, episode_show_name, episode_name, reason_start, reason_end, shuffle, skipped
FROM dbo.[23_])


SELECT * INTO full_data FROM combo;