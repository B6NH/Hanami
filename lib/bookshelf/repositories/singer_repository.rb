class SingerRepository < Hanami::Repository
  associations do
    has_many :songs
  end

  def all_sorted
    singers.order { name.asc }
  end

  def create_with_songs(data)
    assoc(:songs).create(data)
  end

  def find_with_songs(id)
    aggregate(:songs).where(id: id).as(Singer).one
  end

  def add_song(author,data)
    assoc(:songs,author).add(data)
  end

  def remove_song(author,id)
    assoc(:songs,author).remove(id)
  end
end
