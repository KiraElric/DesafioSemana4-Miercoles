class PagesController < ApplicationController
  def dashboard
    @projects = Project.all
  end

  def form
  end

  def create
    @project = Project.create(name_project: params[:name_project], description: params[:description],
                              start_on: params[:start_on], finish_on: params[:finish_on], state: params[:state])
  end
end
