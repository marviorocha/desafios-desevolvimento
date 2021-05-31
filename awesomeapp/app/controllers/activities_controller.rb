class ActivitiesController < ApplicationController

    before_action :find_activity, only: [:destroy]

    def index
        @activity = Activity.all
    end

    def new
        @activity = Activity.new
    end

    def create

        @activity = Activity.new(activity_params)
        
        respond_to do |format|
            if @activity.save
            format.html { redirect_to activities_path, notice: 'Atividade cadastrado com sucesso!' }
            else
            format.html {render 'new'}
            flash.alert = @activity.errors.full_messages.to_sentence
            end    
        end
    end

    def update
        
    end
    

    def destroy

        respond_to do |format|
            if @activity.destroy
            format.html { redirect_to activities_path, notice: 'Atividade foi excluído com sucesso!' }
            else
            format.html { render 'index'}
            flash.alert = @activity.errors.full_messages.to_sentence
            end
        end
    end
    
    
    private

    def find_activity
        @activity = Activity.find(params[:id])
    end

    def activity_params
        params.require(:activity).permit(:name_activity, :start_date, :end_date, :project_id, :finish)
    end
    

end
