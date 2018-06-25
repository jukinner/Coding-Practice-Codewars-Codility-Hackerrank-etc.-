# Build a Progress Tracking Class in Ruby

# Summary
# Implement a class that tracks a user's completion percentage and dynamically allows a user to update it.

# Exercise Description
# Build a class that tracks the completed percentage of a course for a student, and when the student marks a task complete, the class should update the percent complete to reflect the updated value.

# Example Workflow
# c = Completion.new(number_of_guides: 100, total_completed: 55)
# c.completed_percentage # => 0.55

# c.mark_complete

# c.completed_percentage # => 0.56

require 'rspec'

class Completion

  def initialize(number_of_guides:, total_completed:)
    @number_of_guides = number_of_guides
    @total_completed = total_completed
  end

  def completed_percentage
    p @total_completed.to_f / @number_of_guides
  end

  def mark_complete
    @total_completed += 1
  end
end

describe 'Course tracker' do
  it 'tracks course progress' do
    c = Completion.new(number_of_guides: 100, total_completed: 55)
    expect(c.completed_percentage).to eq(0.55)

    c.mark_complete

    expect(c.completed_percentage).to eq(0.56)
  end
end









