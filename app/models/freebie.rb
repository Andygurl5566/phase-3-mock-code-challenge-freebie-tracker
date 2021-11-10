class Freebie < ActiveRecord::Base  #Freebie is the class
    belongs_to :dev
    belongs_to :company

    # def self.print_details
    #     end <--- this an example of a class method

    def print_details
        binding.pry
        "#{self.dev.name} owns a #{self.item_name} from #{self.company.name} " #self pointing to the instance of Freebie class
          corrected
    end

end
