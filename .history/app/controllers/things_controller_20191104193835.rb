class ThingsController < ApplicationController
    def index
        @things = Thing.all
    end

    def new
        @thing = Thing.new
    end

    def create
        @thing = Thing.create(thing_params)
        redirect_to things_path
    end

    def edit
        @thing = Thing.find(params[:id])
    end

    def update
        @thing = Thing.find(params[:id])
        @thing.update(thing_params)
        redirect_to things_path
    end

    private
        def thing_params
            params.require(:thing).permit(:title)
        end
end
