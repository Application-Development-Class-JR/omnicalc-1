class ApplicationController < ActionController::Base
  #square
  def blank_square_form
    render({:template=>"calculation_templates/square_form.html.erb"})
  end

  def calculate_square
    @num = params.fetch("user_input").to_f
    @square_of_num = @num ** 2
    render({:template=>"calculation_templates/square_results.html.erb"})
  end
  #square root
  def blank_squareroot_form
    render({:template=>"calculation_templates/squareroot_form.html.erb"})
  end

  def calculate_squareroot
    @num2 = params.fetch("user_input2").to_f
    @squareroot_of_num = @num2 ** 0.5
    render({:template=>"calculation_templates/squareroot_results.html.erb"})
  end
  #payment
  def blank_payment_form
    render({:template=>"calculation_templates/payment_form.html.erb"})
  end

  def calculate_payment
    @num_apr = params.fetch("user_APR").to_f
    @num_years = params.fetch("user_years").to_f
    @num_principal = params.fetch("user_principal").to_f
    @numerator = @num_apr/(12*100)*@num_principal
    @denominator = 1-(1+@num_apr/(12*100))**(-@num_years*12)
    @num_payment = @numerator/@denominator
    render({:template=>"calculation_templates/payment_results.html.erb"})
  end
  #random
  def blank_random_form
    render({:template=>"calculation_templates/random_form.html.erb"})
  end

  def calculate_randon
    #@num = params.fetch("user_input").to_f
    #@square_of_num = @num ** 2
    render({:template=>"calculation_templates/random_results.html.erb"})
  end

end
