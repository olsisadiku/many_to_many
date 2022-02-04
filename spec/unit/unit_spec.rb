require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes' do
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  ########################################
  subject do
    described_class.new(author: 'J.K. Rowling')
  end

  it 'is valid with valid attributes' do
    expect(subject).not_to be_valid
  end

  it 'is not valid without a author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  ########################################
  subject do
    described_class.new(price: 10)
  end

  it 'is valid with valid attributes' do
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  ########################################
  subject do
    described_class.new(Date: '2022-03-02')
  end

  it 'is valid with valid attributes' do
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end
