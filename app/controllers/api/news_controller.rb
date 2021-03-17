class Api::NewsController < ApplicationController
  def index
    # if i want data, go to the db
    
    
    response = HTTP.get("http://newsapi.org/v2/everything?q=#{params[:search]}&from=2021-02-16&sortBy=publishedAt&apiKey=#{Rails.application.credentials.news_api[:api_key]}")
    render json: response.parse
  end
end
