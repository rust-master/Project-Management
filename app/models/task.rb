class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'complete']}

  STATUS_OPTIONS = [
    ['Not started', 'not-started'],
    ['In progress', 'in-progress'],
    ['Complete', 'complete'],
  ]

  def badge_color
    case status
    when 'not-started'
      '#0d6efd'
    when 'in-progress'
      '#0dcaf0'
    when 'complete'
      '#198754'
    end

  end

end
