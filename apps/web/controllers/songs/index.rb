module Web
  module Controllers
    module Songs
      class Index
        include Web::Action
        include Hanami::Pagination::Action

        expose :songs

        def call(params)
          repo = SongRepository.new
          @songs = all_for_page(repo.all_sorted)
        end

        def limit
          2
        end

      end
    end
  end
end
