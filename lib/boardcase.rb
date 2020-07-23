


class BoardCase
	attr_accessor :case_value, :id_case

  def initialize(id_case,case_value)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @case_value = " "
    @id_case = ["A1","A2","A3","B1","B2","B3","C1","C2","C3"]
    puts @id_case
  end
end

