module Web
  module Controllers
    module Singers
      class Index
        include Web::Action

        expose :singers

        def call(params)
          @singers = SingerRepository.new.all_sorted.to_a
        end
      end
    end
  end
end
