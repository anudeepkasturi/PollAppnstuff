class Question < ActiveRecord::Base
  validates :poll_id, :text, presence: true
  has_many :answer_choices,
    :primary_key => :id,
    :foreign_key => :question_id,
    :class_name => 'AnswerChoice'

  belongs_to :poll,
    :primary_key => :id,
    :foreign_key => :poll_id,
    :class_name => 'Poll'

  has_many :responses,
    :through => :answer_choices,
    :source => :responses

  def results
    results = Question.find_by_sql([<<-SQL, self.id])
      SELECT
        answer_choices.text, COUNT(responses.id) AS num_votes
      FROM
        questions
      JOIN
        answer_choices ON answer_choices.question_id = questions.id
      LEFT OUTER JOIN
        responses ON answer_choices.id = responses.answer_id
      WHERE
        questions.id = ?
      GROUP BY
        answer_choices.id

    SQL

    results.each {|vote| puts "#{vote.text}: #{vote.num_votes}"}
  end
end
