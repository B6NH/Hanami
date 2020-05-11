module Web
  module Controllers
    module Songs
      class Create
        include Web::Action

        params do
          required(:song).schema do
            required(:singer_id).filled(:int?)
            required(:title).filled(:str?)
          end
        end

        def call(params)
          if params.valid?
            repository = SingerRepository.new
            singer = repository.find(params[:song][:singer_id])
            unless(singer.nil?)
              repository.add_song(singer,title:params[:song][:title])
              redirect_to routes.singer_path(singer.id)
            end
          else
            self.status = 422
          end
        end
      end
    end
  end
end
