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
      @result = @input_num ** 0.5
      @input_num = input_str.to_i
      render({ :template => "calc_templates/square_root_results"})
    end

    def new_payment
        render({ :template => "calc_templates/new_payment"})
    end

    def do_payment
      @user_apr = params.fetch("user_apr").to_f
      @user_years = params.fetch("user_years").to_f
      @user_principal = params.fetch("user_principal").to_f
    
      @numerator = (@user_apr / (100*12) ) * @user_principal
      @denominator = 1 - (1 + @user_apr/(100*12)) ** (-@user_years * 12)
      @the_result = @numerator / @denominator
      render({ :template => "calc_templates/payment_results"})
    end 

    def new_random
      render({ :template => "calc_templates/new_random"})
    end

    def do_random
      @user_min = params.fetch("user_min").to_f
      @user_max = params.fetch("user_max").to_f
    
      @the_result= rand(@user_min..@user_max)
      render({ :template => "calc_templates/random_results"})
    end

  end

  
    