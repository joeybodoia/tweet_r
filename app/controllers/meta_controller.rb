class MetaController < ApplicationController
    def about
        render json: {content: "I've been expecting you"}
    end
end