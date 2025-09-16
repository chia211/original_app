class VitalSignsController < ApplicationController

  def index
    @vital_signs = vital_signs.all
  end
end
