class TweetsController < ApplicationController

    def index
        render(status: 200, json: { tweets: Tweet.all })
    end

    def show
        tweet = Tweet.find(params[:id])
        render(json: { tweet: tweet })
    end
end