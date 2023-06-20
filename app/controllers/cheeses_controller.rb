class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  # GET /cheeses/:id
  def show
    cheeses = Cheese.find(params[:id])
    if cheeses
    render json: cheeses, 
    only: [:id, :name, :price,:is_best_seller],
    methods: [:summary]
    else
      render json: {error: 'cheese not found'}

    end
  end

end
