class Domain < ActiveRecord::Base
  has_many :contents

  def has_page_domain?
    self.description?
  end
end
