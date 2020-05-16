module Web
  module Controllers
    module Movies
      class Index
        include Web::Action

        expose :movies

        def call(params)
          @movies = MovieRepository.new.all_sorted.to_a
        end
      end
    end
  end
end
