class ThingsController < ApplicationController
    def index
        @things = Thing.all
    end

    def new
        @things = Thing.all
    end
end
