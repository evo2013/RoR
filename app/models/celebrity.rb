class Celebrity < ActiveRecord::Base
has_many :articles
has_many :facebooks
has_many :flickrs
has_many :instagrams
has_many :tweets
has_many :videos
end
