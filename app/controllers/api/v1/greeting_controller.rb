class Api::V1::GreetingController < ApplicationController
  def index
    @greetings = Greeting.all
    if @greetings.empty?
      render json: { message: 'Sorry, nothing to show' }
    else
      @greet = @greetings.sample
      render json: @greet
    end
  end
end
