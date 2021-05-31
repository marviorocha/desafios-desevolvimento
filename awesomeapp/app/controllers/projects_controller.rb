class ProjectsController < ApplicationController
    
    before_action :params_find, only: [:destroy]

    def index
        @project = Project.all
    end

    def new
        @project = Project.new
    end
    
    
    def create
      
        @project = Project.new(params_project)
       
        respond_to do |format| 
           if @project.save
           format.html {redirect_to projects_path, notice: 'Projeto cadastrado com sucesso!'}
           else
           format.html {render 'new'}
           flash.alert = @project.errors.full_messages.to_sentence
           end
  
        end
    
    end
    
  
    def destroy
        respond_to do |format|
            if @project.destroy
            format.html {redirect_to projects_path, notice: "O Projeto (#{@project.name}) foi excluído com sucesso "}
            else
            format.html {render 'index'}
            flash.alert = @project.errors.full_messages.to_sentence
            end
        end

    end
    


    private
 
    def params_find
        @project = Project.find(params[:id])        
    end
    
    
    def params_project 
        params.require(:project).permit(:name, :start_date, :end_date)
    end
    

end
