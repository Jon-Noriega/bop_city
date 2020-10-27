class SongsController < ApplicationController
    def index
        @songs = Song.all
        render json: @songs, include: :artist
    end

    def create

    end

    def song_params
        params.require(:song).permit(:title, :artist_id)
    end
    
end
