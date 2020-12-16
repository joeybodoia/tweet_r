class TweetsController < ApllicationController

    def index
        render(status: 200, json: { tweets: Tweet.all })
    end

    def show

    end
end