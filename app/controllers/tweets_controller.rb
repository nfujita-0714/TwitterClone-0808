class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.new
    @tweet.title = 'This is first tweet title'
    @tweet.content = 'I am making how to make twitter app.'
    @tweet.save
  end

  def new
  end

  def create
    @tweet = Tweet.new
    @tweet.title = params[:tweet][:title]
    @tweet.content = params[:tweet][:content]
    @tweet.save
    redirect_to '/tweets/index'
  end
end
