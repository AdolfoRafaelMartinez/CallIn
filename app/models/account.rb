class Account < ActiveRecord::Base
   has_many :xactions, :order => "xactions.when desc"
end
