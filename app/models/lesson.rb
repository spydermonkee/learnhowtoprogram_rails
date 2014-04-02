class Lesson < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true
  validates :content, :presence => true
  validates :number, :presence => true, :uniqueness => true

  def next
    Lesson.where('number > ?', self.number).order(:number).first
  end

  def previous
    Lesson.where('number < ?', self.number).order(:number).last
  end
end
