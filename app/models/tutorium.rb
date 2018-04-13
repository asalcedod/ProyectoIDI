class Tutorium < ApplicationRecord
	validates :materia, presence: true, length: {minimum:5 }
	validates :fecha, presence: true, length: {minimum:10 }
	validates :salon, presence: true, length: {minimum:5 }
end
