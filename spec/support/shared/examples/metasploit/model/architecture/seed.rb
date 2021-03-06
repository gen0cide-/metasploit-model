shared_examples_for 'Metasploit::Model::Architecture seed' do |attributes={}|
  attributes.assert_valid_keys(:abbreviation, :bits, :endianness, :family, :summary)

  context_abbreviation = attributes.fetch(:abbreviation)

  context "with #{context_abbreviation}" do
    subject do
      seed
    end

    # put in a let so that `let(:seed)` has access to abbreviation.
    let(:abbreviation) do
      context_abbreviation
    end

    it 'should exist' do
      seed.should_not be_nil
    end

    its(:bits) { should == attributes.fetch(:bits) }
    its(:endianness) { should == attributes.fetch(:endianness) }
    its(:family) { should == attributes.fetch(:family) }
    its(:summary) { should == attributes.fetch(:summary) }
  end
end