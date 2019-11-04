class ThingsController < ApplicationController
    def index
        @things = Thing.all
    end

    def new
        @thing = Thing.new
    end

    def create
        @thing = Thing.create(thing_params)
    end

    private
        def thing_params
            params.require(:thing)
end
