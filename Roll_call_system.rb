# Building a Roll Call System in Ruby
# This guide will walk you through how to implement a method that 
# can take roll for students and return a hash that lists the students that were present and absent.

# Summary
# Build a method that keeps track of student attendance.

# Exercise Description
# Define a method that checks the attendance status of each student and returns a list of students who were present 
# and absent. You should also have this method return the correct percentage of present and absent students.

# Example Data
#     {
#         "2017-04-12"=>
#         {
#           :present=>[
#             "Ryan",
#             "Chase",
#             "KJ",
#             "Zach",
#             "Ben",
#             "Stephanie",
#             "Ian",
#             "Alex",
#             "Cody",
#             "Preston",
#             "Andrew",
#             "Jason"
#           ],
#           :absent=>[
#             "Hunter",
#             "Devan",
#             "Christian"
#           ]
#         }
#       })
# Real World Usage
# This exercise is used every day by educational facilities and makes roll calling very efficient. This is a great 
# exercise to understand and easy to implement, if needed.
require 'rspec'
require 'date'

class RollCall
	def initialize
		@roll_today = Hash.new
		@roll_today[Date.today.to_s] = {:present=>[],:absent=>[]}
    @initial_key = @roll_today.keys[0]
	end

	def student_check(name:, status:)
    if status == true
      @roll_today[@initial_key][:present].push(name)
    else
      @roll_today[@initial_key][:absent].push(name)
		end
	end

	def roll
    @roll_today
	end

	def roll_percentage(status)
    total_students = @roll_today[@initial_key][:present].count + @roll_today[@initial_key][:absent].count
    if status === 'present'
      (@roll_today[@initial_key][:present].count.to_f / total_students) * 100.0
    elsif status === 'absent'
      (@roll_today[@initial_key][:absent].count.to_f / total_students) * 100.0
    end
	end
end

# @rc = RollCall.new
# @rc.student_check(name: 'Ryan', status: true)
# @rc.student_check(name: 'Chase', status: true)
# @rc.student_check(name: 'KJ', status: true)
# @rc.student_check(name: 'Hunter', status: false)
# @rc.student_check(name: 'Devan', status: false)
# @rc.student_check(name: 'Zach', status: true)
# @rc.student_check(name: 'Ben', status: true)
# @rc.student_check(name: 'Stephanie', status: true)
# @rc.student_check(name: 'Ian', status: true)
# @rc.student_check(name: 'Alex', status: true)
# @rc.student_check(name: 'Cody', status: true)
# @rc.student_check(name: 'Preston', status: true)
# @rc.student_check(name: 'Andrew', status: true)
# @rc.student_check(name: 'Jason', status: true)
# @rc.student_check(name: 'Christian', status: false)
# @rc.roll
# @rc.roll_percentage('present')
# @rc.roll_percentage('absent')

describe RollCall do
  before do
    @rc = RollCall.new
    @rc.student_check(name: 'Ryan', status: true)
    @rc.student_check(name: 'Chase', status: true)
    @rc.student_check(name: 'KJ', status: true)
    @rc.student_check(name: 'Hunter', status: false)
    @rc.student_check(name: 'Devan', status: false)
    @rc.student_check(name: 'Zach', status: true)
    @rc.student_check(name: 'Ben', status: true)
    @rc.student_check(name: 'Stephanie', status: true)
    @rc.student_check(name: 'Ian', status: true)
    @rc.student_check(name: 'Alex', status: true)
    @rc.student_check(name: 'Cody', status: true)
    @rc.student_check(name: 'Preston', status: true)
    @rc.student_check(name: 'Andrew', status: true)
    @rc.student_check(name: 'Jason', status: true)
    @rc.student_check(name: 'Christian', status: false)
  end

  it 'can take roll for students and return a hash that lists the students that were present and absent' do
    expect(@rc.roll).to eq(
      {
        Date.today.to_s=>
        {
          :present=>[
            "Ryan",
            "Chase",
            "KJ",
            "Zach",
            "Ben",
            "Stephanie",
            "Ian",
            "Alex",
            "Cody",
            "Preston",
            "Andrew",
            "Jason"
          ],
          :absent=>[
            "Hunter",
            "Devan",
            "Christian"
          ]
        }
      })
  end

  it 'can give a percent of absent and present' do
    expect(@rc.roll_percentage('present')).to eq(80.0)
    expect(@rc.roll_percentage('absent')).to eq(20.0)
  end

  # it 'appends the daily roll call to a file' do
  #   # In order for this test you to pass, you will need to have a directory
  #   # named 'support' on the path that you call the RSpec test from
  #   @rc.save_to_file
  #   content = <<~CONTENT
  #     ## Roll call for 2017-04-12
  #     ### 80.0% Present
  #     Ryan, Chase, KJ, Zach, Ben, Stephanie, Ian, Alex, Cody, Preston, Andrew, Jason
  #     ### 20.0% Absent
  #     Hunter, Devan, Christian
  #     ------------------------------------------
  #   CONTENT
  #   expect(File.read('support/roll_log.md')).to match(content)
  # end
end
