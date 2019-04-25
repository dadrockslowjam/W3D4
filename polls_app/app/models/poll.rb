# == Schema Information
#
# Table name: polls
#
#  id        :bigint(8)        not null, primary key
#  author_id :integer          not null
#  title     :string           not null
#

class Poll < ApplicationRecord
    validates :author_id, presence: true
    validates :title, presence: true

    belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User

    has_many :questions,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Question
    
end
