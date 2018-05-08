require 'rspec'


def total_sorter invoices
  return invoices.sort_by(&:total).reverse
end

# Jordans Answer
# def total_sorter invoices
#   invoices.sort_by do |invoice|
#     invoice.total
#   end.reverse
# end

describe 'Invoice sorter' do
  it 'sorts a set of invoices by their totals' do
    Invoice = Struct.new(:name, :total, :category)
    google = Invoice.new('Google', 500, 'Marketing')
    amazon = Invoice.new('Amazon', 1000, 'eCommerce')
    yahoo = Invoice.new('Yahoo', 300, 'Marketing')

    invoices = [google, amazon, yahoo]

    expect(total_sorter(invoices).first.name).to eq('Amazon')
    expect(total_sorter(invoices).last.name).to eq('Yahoo')
  end
end