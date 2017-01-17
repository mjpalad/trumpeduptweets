class TimelinesController < ApplicationController

  def show
    @timeline = Timeline.find(params[:id])
  end

  def new
    @timeline = Timeline.new
  end

  # POST /timeline
  def create
    @timeline = Timeline.new(timeline_params)

    if @timeline.save
      client = Twitter::REST::Client.new do |config|
        config.consumer_key        = "zPSlZIsHkrWFRZDe7hfatwUK0"
        config.consumer_secret     = "4rCeavL2FJFfiED4C3jCMyxGsruOwqE1rvf5CKdAxrJeKmmIKo"
        config.access_token        = "14078518-vGTDjH1lKrgsN1BR3ywzF2qaICnKHiiFeDYVjAsBB"
        config.access_token_secret = "pKBzodBqhGK4xYzxSQcxT57qdKYiSwW4a1cV3dSuTBvMv"
      end

      tweets = client.user_timeline(@timeline.twitter_handle)

      tweets.each do |tweet|
        ttweet = Ttweet.new
        ttweet.tweet_body = tweet.text
        ttweet = TweetConverter.convert(ttweet)
        ttweet.timeline = @timeline
        ttweet.save
      end

      redirect_to @timeline, notice: 'Timeline was successfully created.'
    else
      render :new
    end
  end

  private
    def timeline_params
      params.require(:timeline).permit(:twitter_handle)
    end

end
