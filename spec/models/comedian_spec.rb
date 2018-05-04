RSpec.describe Comedian do
  describe 'validations' do
    describe 'required fields' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)

        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: "Mitch Hedberg")

        expect(comic).to_not be_valid
      end
    end
  end
end
