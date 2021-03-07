class Project < ApplicationRecord
  enum state: [:proposal, :in_progress, :finished] #Arreglo de simbolos con los estados del proyecto.
end
