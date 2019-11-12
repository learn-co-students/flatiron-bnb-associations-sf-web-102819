class User < ActiveRecord::Base
    has_many :listings, :foreign_key => 'host_id'
    has_many :reviews, :foreign_key => 'guest_id'
    has_many :guest_reservations, :class_name => "Reservation", :foreign_key => 'guest_id'
    has_many :reservations, through: :listings, :foreign_key => 'host_id'


    def trips
        self.guest_reservations
    end
end