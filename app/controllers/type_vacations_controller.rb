class TypeVacationsController < ApplicationController
    def index
        @typeVacation = TypeVacation.all
    end
end
