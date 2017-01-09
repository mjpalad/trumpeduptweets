class TtweetsController < ApplicationController

  def show
    @ttweet = Ttweet.find(params[:id])
  end

  # GET /ttweets/new
  def new
    @ttweet = Ttweet.new
  end

  # POST /ttweets
  def create
    @ttweet = Ttweet.new(ttweet_params)

    @ttweet.ttweet_body = TweetConverter.convert(@ttweet.tweet_body)

    if @ttweet.save
      redirect_to @ttweet, notice: 'Ttweet was successfully created.'
    else
      render :new
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def ttweet_params
      params.require(:ttweet).permit(:tweet_body, :ttweet_body)
    end
end
