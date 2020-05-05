module Web
  module Views
    module Movies
      class Create
        include Web::View
        template 'movies/new'
      end
    end
  end
end
