class TasksController < ApplicationController
	before_action :find_task, only: [:show, :edit, :upadate, :destroy]

	def index
		@task = Task.all.order("created_at DESC")
	end

	def show
		
	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.new(task_params)

		if @task.save
			redirect_to @task
		else
			render "New"
		end
	end

	def update
		
	end

	def destroy
		
	end

	private

	def task_params
		params.require(:task).permit(:title, :descritpion, :company, :url)
	end

	def find_task
		@task = Task.find(params[:id])
	end
end
