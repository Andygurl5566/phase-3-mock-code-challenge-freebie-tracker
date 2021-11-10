class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :freebies, through: :devs


    def recieved_one?(item_name)
       
        if self.freebies.find_by(item_name: item_name)
            true
         else
           false
        end
    end

        # self.freebies.find_by(item_name: item_name) ? true : false <--- another way 

    def give_away(dev, freebie)
        # changes the freebie's dev to be the given dev;
        if freebie.dev_id == self.id    #check who it belongs to
            freebie.dev_id = dev.id     #transfering ownership via the forign id
            freebie.save                # save to db to make a change
            "#{self.name} just gave their #{freebie.item_name} to #{dev.name}" 
        else
            "Don't give what is not yours!"
        end
    end  
end
