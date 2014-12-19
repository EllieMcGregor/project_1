 class Ability
   include CanCan::Ability

   def initialize(user)
     user ||= User.new
     if user.has_role? :admin
         can :manage, :all
     elsif user.has_role? :instructor
         can :read, :all 
         can :edit, Booking
         #maybe can edit booking if they made it? need a created_by field?
         can :new, Booking 
         can :create, Booking     
     else
         can :read, Course
         can :read, Campus
         can :read, Enroll
         can :read, Classroom
         can :read, Instruct
         # can :read, Classroom
     end
   end
 end

