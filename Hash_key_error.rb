# Integrate a hash query method that throws an error when asked to query a key that doesn't exist.


require 'rspec'

def hash_query name, key
  name.fetch(key)
end


describe 'Hash query' do
  before do
    @hash = { name: 'Kristine', email: 'test@example.com' }
  end

  it 'properly retrieves a value given a key' do
    expect(hash_query @hash, :name).to eq('Kristine')
  end

  it 'throws an error when a key is requested that does not exist in the hash' do
    expect { hash_query @hash, :username }.to raise_error(KeyError)
  end
end