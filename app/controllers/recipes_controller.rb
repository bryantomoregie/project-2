class RecipesController < ApplicationController


    skip_before_action(:check_login, only: [:index, :show])
    def index
        @recipes = Recipe.all
    end

    def new 
        @recipes = Recipe.all
        @recipe = Recipe.new
        @categories = Recipe.all.map {|recipe| recipe.category}
    end

    def create
        @user = User.all[0]
        @recipe = Recipe.create({
            name: params[:recipe][:name],
            category: params[:recipe][:category],
            description: params[:recipe][:description],
            recipe_url: params[:recipe][:recipe_url],
            user_id:  @user.id
            })
            redirect_to("/users/#{@user.id}")
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

     


end