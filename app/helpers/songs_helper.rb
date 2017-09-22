module SongsHelper

  def artist_select(song, artist)
    if artist
      (hidden_field_tag "song[artist_id]", artist.id) + (label_tag artist.name)
    elsif
      val = song.artist ? song.artist.id : 1
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name, val)
    end
  end
end
