class Project < ApplicationRecord
  validates :name_project, :description, :state, presence: true
  enum state: [:proposal, :in_progress, :finished] #Arreglo de simbolos con los estados del proyecto.
  # scope :search_proposal, ->{where(state: 'proposal')} --> Scope de busqueda para el estado de propuesta
  # scope :search_in_progress, ->{where(state: 'in_progress')} --> Scope de busqueda para el estado de en progreso
  # scope :search_finished, ->{where(state: 'finished')} --> Scope de busqueda para el estado de terminado
  scope :search, ->(param) {where(state: param )} #Scope de busqueda según un parametro que recibira desde una vista (forma mas génerica de busqueda que las definidas arriba)
end
