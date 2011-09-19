class Region < ActiveRecord::Base
  belongs_to :state
  
  before_save :make_permalink
  before_update :make_permalink
  
  def to_param
    "#{name.parameterize}"
  end
  
  private
    def make_permalink
      self.permalink = name.parameterize
    end
end
