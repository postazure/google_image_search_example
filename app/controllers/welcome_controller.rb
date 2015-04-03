class WelcomeController < ApplicationController
  def index
    @images = []
      Google::Search::Image.new(:query => 'Broncos nfl').each do |image|
        p image
        @images << image.uri
        return
      end

  end
end
