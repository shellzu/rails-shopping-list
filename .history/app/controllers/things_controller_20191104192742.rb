class ThingsController < ApplicationController
    def index
        @things = Thing.all
    end

    def new
        @thing = Thing.new
    end
end
