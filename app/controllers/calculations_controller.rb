class CalculationsController  < ApplicationController
  
  def homepage
    render ({ :template => "calc_templates/homepage"})
    end

    def new_square
        render({ :template => "calc_templates/new_square"})
    end

    def do_square
      input_str = params.fetch("number")
      @input_num = input_str.to_f
      @result = @input_num * @input_num
      @input_num = input_str.to_i
      render({ :template => "calc_templates/square_results"})
    end

    def new_square_root
      render({ :template => "calc_templates/new_square_root"})
    end

    def do_square_root
      input_str = params.fetch("number")
      @input_num = input_str.to_f
      @result = input_num ** 0.5
      @input_num = input_str.to_i
      render({ :template => "calc_templates/square_root_results"})
    end


  end

  
    