class TasksController < ApplicationController #TasksController inherits all traits from Application Controller 
  def index #define index method
    render json: Task.order(:id) #JSON representation of all Tasks 
  end #end of index method 

  def update
    task = Task.find(params[:id])#find the task by it's id
    task.update_attributes(task_params)#updates task to show it's done
    render json: task #JSON representation of updated item 
  end 

  private #private method 

  def task_params #naming method task_params
    params.require(:task).permit(:done)
  end

end
