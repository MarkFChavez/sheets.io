class DashboardsController < ApplicationController

  def show
    dashboard = Dashboard.new(current_user)
    render "show", locals: { dashboard: dashboard }
  end

end
