resource "spotify_playlist" "Punjabi" {
  name = "Punjabi"
  tracks = ["7uSpLsbpnwk0XTC1nLlpG2"]
}

data "spotify_search_track" "eminem" {
  artist = "Eminem"
}

resource "spotify_playlist" "SlimShady" {
  name = "Slim Shady"
  tracks = [ 
    data.spotify_search_track.eminem.tracks[0].id,
    data.spotify_search_track.eminem.tracks[1].id,
    data.spotify_search_track.eminem.tracks[2].id
  ]
}