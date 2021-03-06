class Artist < ApplicationRecord

def self.new_from_spotify_artist(spotify_artist)
    Artist.new(

      name: spotify_artist.name,
      image: spotify_artist.images[0],
      genres: spotify_artist.genres, 
      popularity: spotify_artist.popularity,
      spotify_url: spotify_artist.external_urls,
      spotify_id: spotify_artist.id
    )
 end
#metodo para guardar artistas.
 def self.create_from_spotify_artist(spotify_artist)
    artist = self.new_from_spotify_artist(spotify_artist)
    artist.save
    artist
  end
  
end
