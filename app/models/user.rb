class User < ApplicationRecord
    
  def tests_on_this_difficulty(difficulty_level)
    result_tests = []
    TestUser.where("user_id = ?", self.id)
      .map { |model| Test.find(model.test_id) }
      .filter { |model| model.level == difficulty_level }
  end
end