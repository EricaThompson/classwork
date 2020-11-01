class CatsController < ApplicationController
    def index
        @cats = Cat.all
        render :index
    end

    def show
        @cat = Cat.find(params[:id])
        render :show
    end

    def new
        # debugger
        @cat = Cat.new
        render :new
    end


    def create
        # debugger
        @cat = Cat.new(cat_params)
        
        if @cat.save
            redirect_to cat_url(@cat)
        else
            render :new
        end
    end

    def edit
        @cat = Cat.find_by(id: params[:id])

        if @cat
            render :edit
        else
            render json: 'No cat here!', status: 404
        end

    end

    def update
        cat = Cat.find_by(id: params[:id])

        if cat.update(cat_params)
            redirect_to cat_url(cat)
        else
            render json: cat.errors.full_messages, status: 422
        end
    end

    private
    
    def cat_params
        params.require(:cat).permit(:birth_date, :color, :name, :sex, :description)
    end
end