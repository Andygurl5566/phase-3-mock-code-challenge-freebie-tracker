class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def self.oldest_company  #self makes it a class method self means Company
      ordered_years = Company.order(:founding_year)
      #grab all the years - can also do self.order
      oldest = ordered_years.first
      #return the oldest year
      oldest
      #   self.order("founding_year).first <--- Adam solution

    end

    def give_freebie(dev, item_name, value)
        Freebie.create(
            dev_id: dev.id,
            company_id: self.id,
            item_name: item_name,
            value: value
        )
    end
end