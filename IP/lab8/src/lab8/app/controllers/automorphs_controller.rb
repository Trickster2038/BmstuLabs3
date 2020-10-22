class AutomorphsController < ApplicationController
  def input
  end

  def view
    search_range = params[:search_range].to_i
    @result = (1..search_range).to_a.select do |elem|
      elem.to_s[-1] == (elem**2).to_s[-1]
    end
  end
end
