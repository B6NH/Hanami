module Web
  module Controllers
    module Songs
      class Index
        include Web::Action

        expose :songs

        def call(params)
          @songs = SongRepository.new.all
        end
      end
    end
  end
end
