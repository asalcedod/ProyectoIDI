class Tutor < ApplicationRecord
	validates :nombre, presence: true, length: {minimum:10 }
	validates :apellido, presence: true, length: {minimum:10 }
	validates :programa, presence: true, length: {minimum:10 }
	validates :semestre, presence: true, length: {minimum:1 }
	validates :cedula, presence: true, uniqueness: true, length: {minimum:5 }
	validates :inf_contact, presence: true, length: {minimum:14 }
end
