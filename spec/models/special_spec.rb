RSpec.describe Comedian do
  describe 'validations' do
    describe 'required fields' do
      it 'should be invalid if missing a special name' do
        mitch = Comedian.create(name: "Mitch Hedberg", age: 48)
        require 'pry'; binding.pry
        mitch_special = Special.create(comedian_id: mitch.id)

        expect(mitch_special).to_not be_valid
      end

      it 'should be invalid if missing a comedian id' do
        mitch = Comedian.create(name: "Mitch Hedberg", age: 48)
        mitch_special = Special.create(name: "Do You Believe in Gosh?")

        expect(mitch_special).to_not be_valid
      end
    end
  end
end
