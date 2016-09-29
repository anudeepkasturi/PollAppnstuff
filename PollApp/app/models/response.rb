class Response < ActiveRecord::Base
  validate :cannot_respond_multiple_times, :cannot_respond_to_own_poll

  belongs_to :respondent,
    :primary_key => :id,
    :foreign_key => :user_id,
    :class_name => 'User'

  belongs_to :answer_choice,
    :primary_key => :id,
    :foreign_key => :answer_id,
    :class_name => 'AnswerChoice'

  has_one :question,
    :through => :answer_choice,
    :source => :question

  def sibling_responses
    question.responses.where.not("responses.id = ?", self.id)
  end

  def respondent_already_answered?
    sibling_responses.exists?(user_id: self.user_id)
  end

  def cannot_respond_multiple_times
    if respondent_already_answered?
      errors[:user_id] << "You already responded to this question"
    end
  end

  def cannot_respond_to_own_poll
    errors[:user_id] << "Cannot respond to own poll" if question.poll.author_id == self.user_id
  end

end
