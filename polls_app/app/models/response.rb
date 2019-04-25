# == Schema Information
#
# Table name: responses
#
#  id            :bigint(8)        not null, primary key
#  user_id       :integer          not null
#  answer_choice :integer          not null
#

class Response < ApplicationRecord
    validates :user_id, presence: true
    validates :answer_choice, presence: true

    belongs_to :a_choice,
    primary_key: :id,
    foreign_key: :answer_choice,
    class_name: :AnswerChoice

    belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
end
