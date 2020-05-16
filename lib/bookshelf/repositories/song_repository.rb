class SongRepository < Hanami::Repository
  def all_sorted
    songs.order { title.asc }
  end
end
