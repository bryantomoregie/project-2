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
        @recipe = Recipe.create({
            name: params[:recipe][:name],
            category: params[:recipe][:category],
            description: params[:recipe][:description],
            recipe_url: params[:recipe][:recipe_url],
            user_id: session[:user_id]
            })
            redirect_to("/users/#{session[:user_id]}")
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def edit
        @recipe = Recipe.find(params[:id])
    end

    def update
        @recipe = Recipe.find(params[:id])
        @recipe.update({
            name: params[:recipe][:name],
            category: params[:recipe][:category],
            description: params[:recipe][:description],
            recipe_url: params[:recipe][:recipe_url],
            user_id: session[:user_id]
        })
        redirect_to "/recipes/#{@recipe.id}"
    end

    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
        redirect_to "/users/#{session[:user_id]}"
    end

    def call_api
        

    end
        

     


end