class ArtistsController < ApplicationController
    def index
        @artists = Artist.all()
        render json: @artists, include: :songs
    end
end
