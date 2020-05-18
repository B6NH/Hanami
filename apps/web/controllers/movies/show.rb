module Web
  module Controllers
    module Movies
      class Show
        include Web::Action

        expose :movie

        def call(params)
          @movie = MovieRepository.new.find(params[:id])
        end
      end
    end
  end
end
