class ThingsController < ApplicationController
    def index
        @things = Thing.all
    end

    def new
        @thing = Thing.new
    end

    def create
        @thing = Thing.create(thing_params)
        redirect_to thing_path
    end

    private
        def thing_params
            params.require(:thing).permit(:title)
        end
end
