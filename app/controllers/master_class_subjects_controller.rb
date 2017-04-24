class MasterClassSubjectsController < ApplicationController
  before_action :find_master_class_subject, except: [:index, :new, :create]

  def edit
    respond_to do |format|
      format.js
    end
  end

  private
  def find_master_class_subject
    @master_class_subject = MasterClassSubject.find_by id: params[:id]
    redirect_to admin_master_class_subjects_path if @master_class_subject.nil?
  end
end
