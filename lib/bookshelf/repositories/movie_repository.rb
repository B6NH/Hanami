class MovieRepository < Hanami::Repository

  def all_sorted
    movies.order { title.asc }
  end
end
