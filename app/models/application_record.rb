class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

def update
  @todo_list = Todo.find(params[:id])
  if @todo_list.update(todo_list_params)
    redirect_to (@todo_list)
  else
    render :edit, status: :unprocessable_entity
  end
end
