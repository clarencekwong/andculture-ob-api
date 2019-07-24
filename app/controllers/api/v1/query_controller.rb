class Api::V1::QueryController < ApplicationController
    def by_city
        @breweries_by_city = Brewery.all.filter {|brewery| brewery.city.downcase === params[:city].downcase}
        render json: @breweries_by_city
    end

    def by_brewery_type
        @breweries_by_brewery_type = Brewery.all.filter {|brewery| brewery.brewery_type.downcase === params[:brewery_type].downcase}
        render json: @breweries_by_brewery_type
    end

    def by_state
        @breweries_by_state = Brewery.all.filter {|brewery| brewery.state.downcase === params[:state].downcase}
        render json: @breweries_by_state
    end
end
