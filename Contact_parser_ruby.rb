require 'rspec'

class ContactParser
  def initialize(data)
    @data = data
  end 

  def bulk_parse
    list = @data
    answer = {accepted: [],rejected: []}
    list.split(",").each do |x|
      if x.include?("<") && x.include?(">") && x.include?("@") && x.include?(".com") && x.split(" ").count >= 3
        answer[:accepted] << {first_name: "#{x.split(" ").first}",last_name: "#{x.split(" ")[-2]}",email: "#{x.split(" ").last[1..-2]}"}
      else
        answer[:rejected] << x.split(" ").map {|x| x.tr("<>", "")}.join(" ")
      end
    end
    p answer
  end
end

contacts = "Darth Vader <darth@vader.com>, Oops Sanderson <oops@gmail>, Han Solo <han@solo.com>, Mace X Windu <mace@windu.com>, Yoda <yoda@lightsaber.com>, Leia Organa <leia@organa.com>"
ContactParser.new(contacts).bulk_parse

describe ContactParser do
  it 'can parse emails by first and last name and email when in the format: Jon Snow <jon@snow.com>' do
    contacts = "Darth Vader <darth@vader.com>, Oops Sanderson <oops@gmail>, Han Solo <han@solo.com>, Mace X Windu <mace@windu.com>, Yoda <yoda@lightsaber.com>, Leia Organa <leia@organa.com>"
    expect(ContactParser.new(contacts).bulk_parse).to eq(
      {
        accepted: [
          {
            first_name: 'Darth',
            last_name: 'Vader',
            email: 'darth@vader.com'
          },
          {
            first_name: 'Han',
            last_name: 'Solo',
            email: 'han@solo.com'
          },
          {
            first_name: 'Mace',
            last_name: 'Windu',
            email: 'mace@windu.com'
          },
          {
            first_name: 'Leia',
            last_name: 'Organa',
            email: 'leia@organa.com'
          }
        ],
        rejected: [
          'Oops Sanderson oops@gmail',
          'Yoda yoda@lightsaber.com'
        ]
      }
    )
  end
end
