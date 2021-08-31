class Test < ApplicationRecord
  def self.name_tests_from_specific_category(category_name)
    target_categories_ids = Test.all.map { |model| model.category_id }
      .map{  |id| Category.find(id) }
      .filter { |model| model.title.eql? category_name }
      .map { |model| model.id }
    target_names = []
    target_categories_ids.each do |category_id|
      target_names << Test.where("category_id = ?", category_id).select(:title).first.title
    end
    target_names
  end
end
