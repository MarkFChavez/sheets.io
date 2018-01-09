class NoteCategoriesController < ApplicationController

  def show
    note_category = NoteCategory.find(params[:id])
    notes = note_category.notes
    render 'show', locals: { category: note_category, notes: notes }
  end

  def new
    note_category = NoteCategory.new
    render 'new', locals: { category: note_category }
  end

  def create
    note_category = current_user.note_categories.new(category_params)

    if note_category.save
      redirect_to dashboard_url
    else
      render :new, locals: { category: note_category }
    end
  end

  private

  def category_params
    params.require(:note_category).permit(:name)
  end

end