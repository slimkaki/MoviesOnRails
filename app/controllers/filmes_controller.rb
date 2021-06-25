class FilmesController < ApplicationController
    before_action :set_filme, except: [:index, :new, :create]

    def index
        @filmes = Filme.all
    end
  
    def show
        @review = Review.new
        @reviews = Review.where(filme: @filme)
        # @reviews = Review.where(filme_id: @filme.id, visible: true)
        # raise
    end

    def new
        @filme = Filme.new
    end

    def create
        @filme = Filme.new(filme_params)
        if @filme.save
            redirect_to filmes_path(@filme)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @filme.update(filme_params)
            redirect_to filme_path(@filme)
        else
            render :edit
        end
    end

    def destroy
        @filme.destroy
        redirect_to filmes_path
    end
    
    private def set_filme
        @filme = Filme.find(params[:id])
    end
        
    def filme_params
        params.require(:filme).permit(:titulo, :diretor, :data_lancamento, :sinopse)    
    end
end
