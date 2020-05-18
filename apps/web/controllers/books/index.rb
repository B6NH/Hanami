module Web
  module Controllers
    module Books
      class Index
        include Web::Action

        expose :books
        expose :order

        def call(params)
          @books = BookRepository.new.all_sorted(params[:order]).to_a
          @order = params[:order]
        end
      end
    end
  end
end
