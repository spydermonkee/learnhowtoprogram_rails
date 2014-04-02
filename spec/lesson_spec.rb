require 'spec_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }
  it { should validate_presence_of :number }
  it { should validate_uniqueness_of :name}
  it { should validate_uniqueness_of :number}


  context '#next' do
    it 'returns the lesson with the next-highest number from the current lesson' do
      current_lesson = Lesson.create({:name => 'lessony1', :number => 1, :content => "this is the lesson" })
      next_lesson = Lesson.create({:name => 'lesson2', :number => 2, :content => "this is actually quite fun"})
      current_lesson.next.should eq next_lesson
    end

     it 'returns the lesson with the next-highest number from the current lesson' do
      middle_lesson = Lesson.create({:name => 'lesson4', :number => 4, :content => "this is the lesson" })
      current_lesson = Lesson.create({:name => 'lesson2', :number => 2, :content => "this is actually quite fun"})
      next_lesson = Lesson.create({:name => 'lesson10', :number => 10, :content => "this is actually quite fun"})
      current_lesson.next.should eq middle_lesson
    end
  end
end
