class SubsController < ApplicationController
    before_action :is_moderator?, only: [:edit]
    before_action :require_logged_in, only: [:create, :new]

    def new
        # @sub = Sub.new 
        render :new
    end

    def create 
        @sub = Sub.new(sub_params)
        @sub.moderator_id = current_user.id

        if @sub.save 
            redirect_to sub_url(@sub)
        else 
            flash.now[:errors] = @sub.errors.full_messages
            render :new 
        end
    end

    def edit 
        @sub = Sub.find_by(id: params[:id])
        render :edit
    end

    def update
        @sub = Sub.find_by(id: params[:id])
        if @sub.update(subs_params)
            redirect_to sub_url(@sub)
        else
            flash.now[:errors] = @sub.errors.full_messages
            render :edit
        end
    end

    def show 
        @sub = Sub.find_by(id: params[:id])
        render :show 
    end

    def index
        @subs = Sub.all
        render :index
    end


    private
    def sub_params 
        # debugger
        params.require(:sub).permit(:title, :description)
    end
end 
