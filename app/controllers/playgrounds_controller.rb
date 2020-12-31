class PlaygroundsController < ApplicationController
  def show
    @playground_id = params[:id]
  end
end
