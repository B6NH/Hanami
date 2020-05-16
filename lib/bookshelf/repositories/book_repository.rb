class BookRepository < Hanami::Repository
  def all_sorted
    books.order { title.asc }
  end
end
