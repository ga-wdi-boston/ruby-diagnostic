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

  describe '.defined_method' do
    it 'returns a number' do
      expect([Float, Fixnum]).to include(subject.defined_method.class)
    end
  end

  describe '.predicate' do
    it 'returns a boolean' do
      expect([true, false]).to include(subject.predicate)
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

  describe '.array_iteration' do
    it 'returns the symbol' do
      expect(subject.array_iteration).to be_a(Symbol)
    end

    it 'represents an iteration method available on Array' do
      iteration_methods = [
        :map,
        :each
      ]

      expect(iteration_methods).to include(subject.array_iteration)
    end
  end

  describe '.returns' do
    it 'returns a value which desribes whether returns are explicit' do
      expect(subject.returns).to equal(false)
    end
  end
end
