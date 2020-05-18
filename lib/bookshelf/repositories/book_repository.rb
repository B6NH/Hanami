class BookRepository < Hanami::Repository
  def all_sorted(order)
    books.order do
      order == 'desc' ? title.desc : title.asc
    end
  end
end
