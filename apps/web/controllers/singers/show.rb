module Web
  module Controllers
    module Singers
      class Show
        include Web::Action

        expose :singer
        expose :songs

        def call(params)
          @singer = SingerRepository.new.find_with_songs(params[:id])
          @songs = singer.songs
        end
      end
    end
  end
end
