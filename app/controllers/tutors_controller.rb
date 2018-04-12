class TutorsController < ApplicationController
	def index
		@tutors = Tutor.all
	end
	def show
		@tutor = Tutor.find(params[:id])
		Tutor.where.not("id = ?", params[:id])
	end
	def new
		@tutor = Tutor.new
	end
	def edit
		@tutor = Tutor.find(params[:id])
	end
	def create
		@tutor = Tutor.new(nombre: params[:tutor][:nombre], apellido: params[:tutor][:apellido], programa: params[:tutor][:programa], semestre: params[:tutor][:semestre], cedula: params[:tutor][:cedula], inf_contact: params[:tutor][:inf_contact])
		if @tutor.save
			redirect_to @tutor
		else
			render :new
		end
	end
	def destroy
		@tutor = Tutor.find(params[:id])
		@tutor.destroy
		redirect_to tutors_path
	end
	def update
		# @tutor.update_attributes({nombre: 'Nueno Nombre'})
		@tutor = Tutor.find(params[:id])
		if @tutor.update(tutor_params)
			redirect_to @tutor
		else
			render :edit
		end
	end
	private 
	def tutor_params
		params.require(:tutor).permit(:nombre,:apellido,:programa,:semestre,:cedula,:inf_contact)
	end
end