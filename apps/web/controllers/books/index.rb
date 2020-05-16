module Web
  module Controllers
    module Books
      class Index
        include Web::Action

        expose :books

        def call(params)
          @books = BookRepository.new.all_sorted.to_a
        end
      end
    end
  end
end
