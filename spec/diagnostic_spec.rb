require_relative '../lib/diagnostic.rb'

RSpec.describe "Diagnostic" do
  subject(:diagnostic) { Diagnostic }

  describe '.script' do
    it 'returns a string with the correct command' do
      expect(subject.script).to eql('ruby lib/example.rb')
    end
  end

  describe '.repl' do
    it 'returns a string with the correct command' do
      expect(subject.repl).to eql('pry')
    end
  end

  describe '.variable' do
    it 'returns a stringified, correctly-named variable name' do
      expect(subject.variable).to eql('star_wars_episode_viii')
    end
  end

  describe '.interpolation' do
    it 'returns a sentence' do
      expect(subject.interpolation)
        .to eql('Jar Jar Binks is really a Sith Lord.')
    end
  end

  describe '.decimal' do
    it 'returns a string containing the correct number type' do
      expect(subject.decimal).to eql('Float')
    end
  end

  describe '.integer' do
    it 'returns a string containing the correct number type' do
      expect(subject.integer).to eql('Fixnum')
    end
  end

  describe '.numbers' do
    it 'contains examples of both number types' do
      responses = [
        subject.numbers.any? { |number| number.class == Float },
        subject.numbers.any? { |number| number.class == Fixnum }
      ]

      expect(responses).to eql([true, true])
    end
  end

  describe '.falsy' do
    it 'contains only falsy' do
      expect(subject.falsy).to all(be_falsy)
    end

    it 'contains only two values' do
      expect(subject.falsy.length).to equal(2)
    end

    it 'contains all values which evaluate to false' do
      responses = [
        subject.falsy.any? { |e| e == nil },
        subject.falsy.any? { |e| e == false }
      ]

      expect(responses).to all(be_truthy)
    end
  end

  describe '.flow_control' do
    it 'returns a string with correct prediction' do
      expect(subject.flow_control).to eql('The Dark Knight')
    end
  end

  describe '.else_if' do
    it 'returns a string with the correct keyword' do
      expect(subject.else_if).to eql('elsif')
    end
  end

  describe '.returns' do
    it 'returns a value which desribes whether returns are explicit' do
      expect(subject.returns).to equal(false)
    end
  end

  describe '.remove_from_array' do
    it 'removes the last two elements from an array' do
      expect(subject.remove_from_array).to eql('arr.pop 2')
    end
  end

  describe '.array_add_to' do
    it 'returns a naturally grown array based on index assignment' do
      expect(subject.array_add_to).to eql('[12, 34, 56, 67, nil, nil, 99]')
    end
  end

  describe '.person_hash' do
    it 'creates an hash with shorthand containing :lucky_number and :first_name symbols' do
      expect(subject.person_hash).to include('person = {first_name:').or include('person = {lucky_number:')
      .and include('first_name:').or include('lucky_number:')
    end
  end

  describe '.hash_default' do
    it 'assigns a string default to the hash' do
      expect(subject.hash_default).to include('person.default = "#{person[:first_name]}')
    end
  end
end
