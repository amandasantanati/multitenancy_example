class Content < ActiveRecord::Base
  belongs_to :domain

  before_save :update_slug

  protected

  def update_slug
    self.slug = self.title.parameterize
  end
end
