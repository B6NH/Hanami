module Web
  module Controllers
    module Singers
      class Index
        include Web::Action

        expose :singers

        def call(params)
          @singers = SingerRepository.new.all
        end
      end
    end
  end
end
