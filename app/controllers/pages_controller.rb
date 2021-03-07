class PagesController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  def dashboard
    # Forma-1 de buscar a partir del parametro que entrega el link del dashboard.
    #if params[:s] == ""
    #  @projects = Project.all
    #elsif params[:s] == "proposal"
    #  @projects = Project.search_proposal
    #elsif params[:s] == "in_progress"
    #  @projects = Project.search_in_progress
    #elsif params[:s] == "finished"
    #  @projects = Project.search_finished
    #end

    #Forma-2 de buscar a partir del parametro que entrega el link del dashboard
    #Se establece que retorne todos los registros a menos que el parametro s tenga una llave y este presente
    return @projects = Project.all unless params.has_key?(:s) && params[:s].present?
    #Si la condicion anterior no se cumple, avanzara a esta donde se buscara segun el parametro s recibido (scope)
    @projects = Project.search(params[:s])
  end

  def form
  end

  def create
    @project = Project.create(name_project: params[:name_project], description: params[:description],
                              start_on: params[:start_on], finish_on: params[:finish_on], state: params[:state])
  end
end
