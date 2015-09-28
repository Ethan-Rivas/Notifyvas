class Friendship < ActiveRecord::Base
  belongs_to :squirrel
  belongs_to :friend, :class_name => "Squirrel"
end
