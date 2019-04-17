class Fungsi < ApplicationRecord
has_and_belongs_to_many :pemakai, :join_table => :pemakai_fungsi


belongs_to :resource,
           :polymorphic => true,
           :optional => true


validates :resource_type,
          :inclusion => { :in => Rolify.resource_types },
          :allow_nil => true

scopify
end
