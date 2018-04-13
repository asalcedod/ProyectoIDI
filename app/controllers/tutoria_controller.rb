class TutoriaController < ApplicationController
	def index
		@tutoria = Tutorium.all
	end
	def show
		@tutori = Tutorium.find(params[:id])
		Tutorium.where.not("id = ?", params[:id])
	end
	def new
		@tutori = Tutorium.new
	end
	def edit
		@tutori = Tutorium.find(params[:id])
	end
	def create
		@tutori = Tutorium.new(materia: params[:tutorium][:materia], monitor: params[:tutorium][:monitor], fecha: params[:tutorium][:fecha], salon: params[:tutorium][:salon])
		if @tutori.save
			redirect_to @tutori
		else
			render :new
		end
	end
	def destroy
		@tutori = Tutorium.find(params[:id])
		@tutori.destroy
		redirect_to tutoria_path
	end
	def update
		@tutori = Tutorium.find(params[:id])
		if @tutori.update(tutori_params)
			redirect_to @tutori
		else
			render :edit
		end
	end
	private 
	def tutori_params
	 	params.require(:tutorium).permit(:materia,:monitor,:fecha,:salon)
	end
end