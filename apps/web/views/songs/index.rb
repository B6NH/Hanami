module Web
  module Views
    module Songs
      class Index
        include Web::View
        include Hanami::Pagination::View
      end
    end
  end
end
