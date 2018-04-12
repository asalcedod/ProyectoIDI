class TutorsController < ApplicationController
	def index
		@tutors = Tutor.all
	end
	def show
		@tutor = Tutor.find(params[:id])
	end
	def new
		@tutor = Tutor.new
	end
	def create
		@tutor = Tutor.new(nombre: params[:tutor][:nombre], apellido: params[:tutor][:apellido], programa: params[:tutor][:programa], semestre: params[:tutor][:semestre], cedula: params[:tutor][:cedula], inf_contact: params[:tutor][:inf_contact])
		@tutor.save
		redirect_to @tutor
	end
end