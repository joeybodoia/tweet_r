class TweetsController < ApplicationController

    def index
        render(status: 200, json: { tweets: Tweet.all })
    end

    def show
        tweet = Tweet.find(params[:id])
        render(json: { tweet: tweet })
    end

    def update
        tweet = Tweet.find(params[:id])
        tweet.update(tweet_params)
        render(status: 200, json: { tweet: tweet })

    end

    def create 
        tweet = Tweet.new(tweet_params) #creating a new tweet using params defined in private

        if tweet.save   #if the tweet saves successfully (which means it was created, then render that tweet,  if not throw an error)
            render json: { tweet: tweet }
        else 
            render(status: 422, json: { tweet: tweet, errors: tweet.errors})
        end
    end


    private 

    def tweet_params
        params.require(:tweet).permit(:title, :content, :author)
    end
end