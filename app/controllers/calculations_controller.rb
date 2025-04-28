class CalculationsController  < ApplicationController
  
  def homepage
    render ({ :template => "calc_templates/homepage"})
    end

    def new_square
        render({ :template => "calculations/new_square"})
    end

    def do_square
      input_str = params.fetch("number")
      input_num = input_str.to_f
      @result = input_num * input_num
      render({ :template => "calculations/square_results"})
    end

  end
  
  
    