class RecipesController < ApplicationController
  
  #TESTNG 
2
  def index
    @recipes = Recipe.all
  end
  
  def show
      @recipe = Recipe.find(params[:id])
  end
  
  def new
    @recipe = Recipe.new
  end
  
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.chef = Chef.find(1)
    
    if @recipe.save
      flash[:success] = "Your recipe was created succesfully!"
      redirect_to recipes_path
    else
      render :new
    end
  end
  
  def edit
    
  end
  
  def update
    if @recipe.update(recipe_params)
      flash[:success] = "Your recipe was updated succesfully!"
      redirect_to recipe_path(@recipe)
    else
      render :edit
    end
  end
  
 
      def recipe_params
      params.require(:recipe).permit(:name, :summary, :description, :picture)
      end

  
 end   
    
  