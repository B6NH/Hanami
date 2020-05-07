module Web
  module Controllers
    module Singers
      class Create
        include Web::Action

        expose :singer

        params do
          required(:singer).schema do
            required(:name).filled(:str?)
          end
        end

        def call(params)
          if params.valid?
            @book = SingerRepository.new.create(params[:singer])
            redirect_to routes.singers_path
          else
            self.status = 422
          end
        end
      end
    end
  end
end
