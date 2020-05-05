module Web
  module Controllers
    module Movies
      class Create
        include Web::Action

        expose :movie

        params do
          required(:movie).schema do
            required(:title).filled(:str?)
            required(:year).filled(:int?)
          end
        end

        def call(params)
          if params.valid?
            @movie = MovieRepository.new.create(params[:movie])
            redirect_to routes.movies_path
          else
            self.status = 422
          end
        end
      end
    end
  end
end
