class Api::MovieReviewsController < ApplicationController
  def index
    response = HTTP.get("https://api.nytimes.com/svc/movies/v2/reviews/search.json?query=taxi&api-key=#{Rails.application.credentials.movie_reviews_api[:api_key]}")
    render json: response.parse
  end

end

# response = HTTP.get("https://api.nytimes.com/svc/movies/v2/reviews/search.json?query=godfather&api-key=#{Rails.application.credentials.movie_reviews_api[:api_key]}")