class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def create
    @lesson = Lesson.new(params[:lesson])
    if @lesson.save
      redirect_to('/lessons')
    else
      render('lessons/new')
    end
  end

  def new
    @lesson = Lesson.new
    render('lessons/new.html.erb')
  end
end
