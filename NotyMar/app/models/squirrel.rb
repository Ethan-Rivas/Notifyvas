class Squirrel < ActiveRecord::Base
  has_attached_file :picture, default_url: "specs.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :back_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :back_friends, :through => :back_friendships, :source => :squirrel
end
