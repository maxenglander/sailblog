class ScoutController < ApplicationController
    def test
        @url = params[:url]
        @title = params[:title]
        @date = params[:date]
        @description = params[:description]
        @tags = params[:tags]
        @author = params[:author]
    end
end
