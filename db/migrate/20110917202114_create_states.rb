class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.string :name
      t.string :state_abbr
    end
    
    states = State.create([
              {:name => 'Alabama', :state_abbr => 'AL'},
              {:name => 'Alaska', :state_abbr => 'AK'},
              {:name => 'Arizona', :state_abbr => 'AZ'},
              {:name => 'Arkansas', :state_abbr => 'AR'},
              {:name => 'California', :state_abbr => 'CA'},
              {:name => 'Colorado', :state_abbr => 'CO'},
              {:name => 'Connecticut', :state_abbr => 'CT'},
              {:name => 'Delaware', :state_abbr => 'DE'},
              {:name => 'District of Columbia', :state_abbr => 'DC'},
              {:name => 'Florida', :state_abbr => 'FL'},
              {:name => 'Georgia', :state_abbr => 'GA'},
              {:name => 'Hawaii', :state_abbr => 'HI'},
              {:name => 'Idaho', :state_abbr => 'ID'},
              {:name => 'Illinois', :state_abbr => 'IL'},
              {:name => 'Indiana', :state_abbr => 'IN'},
              {:name => 'Iowa', :state_abbr => 'IA'},
              {:name => 'Kansas', :state_abbr => 'KS'},
              {:name => 'Kentucky', :state_abbr => 'KY'},
              {:name => 'Louisiana', :state_abbr => 'LA'},
              {:name => 'Maine', :state_abbr => 'ME'},
              {:name => 'Maryland', :state_abbr => 'MD'},
              {:name => 'Massachusetts', :state_abbr => 'MA'},
              {:name => 'Michigan', :state_abbr => 'MI'},
              {:name => 'Minnesota', :state_abbr => 'MN'},
              {:name => 'Mississippi', :state_abbr => 'MS'},
              {:name => 'Missouri', :state_abbr => 'MO'},
              {:name => 'Montana', :state_abbr => 'MT'},
              {:name => 'Nebraska', :state_abbr => 'NE'},
              {:name => 'Nevada', :state_abbr => 'NV'},
              {:name => 'New Hampshire', :state_abbr => 'NH'},
              {:name => 'New Jersey', :state_abbr => 'NJ'},
              {:name => 'New Mexico', :state_abbr => 'NM'},
              {:name => 'New York', :state_abbr => 'NY'},
              {:name => 'North Carolina', :state_abbr => 'NC'},
              {:name => 'North Dakota', :state_abbr => 'ND'},
              {:name => 'Ohio', :state_abbr => 'OH'},
              {:name => 'Oklahoma', :state_abbr => 'OK'},
              {:name => 'Oregon', :state_abbr => 'OR'},
              {:name => 'Pennsylvania', :state_abbr => 'PA'},
              {:name => 'Rhode Island', :state_abbr => 'RI'},
              {:name => 'South Carolina', :state_abbr => 'SC'},
              {:name => 'South Dakota', :state_abbr => 'SD'},
              {:name => 'Tennessee', :state_abbr => 'TN'},
              {:name => 'Texas', :state_abbr => 'TX'},
              {:name => 'Utah', :state_abbr => 'UT'},
              {:name => 'Vermont', :state_abbr => 'VT'},
              {:name => 'Virginia', :state_abbr => 'VA'},
              {:name => 'Washington', :state_abbr => 'WA'},
              {:name => 'West Virginia', :state_abbr => 'WV'},
              {:name => 'Wisconsin', :state_abbr => 'WI'},
              {:name => 'Wyoming', :state_abbr => 'WY'} ])
    
  end

  def self.down
    drop_table :states
  end
end
