require 'spec_helper'


describe 'gross_for_director method' do
  it "correctly totals the worldwide earnings for a director" do
    first_director_name = directors_database.first.values.first
    first_director_hash = directors_database.find{ |x| x[:name] == first_director_name }

    expect(gross_for_director(first_director_hash)).to eq(1357566430)
  end
end

describe 'The directors_database method can be processed by the directors_totals method' do
  it 'which returns a Hash describing director to total' do
    expect(directors_totals([{ :name => "Test Director", :movies => []}])).to be_a(Hash)
  end

  describe "and correctly totals the directors' totals" do
    let(:expected) {
      {
        "Stephen Spielberg"=>1357566430,
        "Russo Brothers"=>2281002470,
        "James Cameron"=>2571020373,
        "Spike Lee"=>256624217,
        "Wachowski Siblings"=>806180282,
        "Robert Zemeckis"=>1273838385,
        "Quentin Tarantino"=>662738268,
        "Martin Scorsese"=>636812242,
        "Francis Ford Coppola"=>509719258
      }
    }

    it "correctly totals 'Stephen Spielberg'" do
      expect(directors_totals(directors_database)['Stephen Spielberg']).to eq(expected['Stephen Spielberg'])
    end

    it "correctly totals 'Russo Brothers'" do
      expect(directors_totals(directors_database)['Russo Brothers']).to eq(expected['Russo Brothers'])
    end

    it "correctly totals 'James Cameron'" do
      expect(directors_totals(directors_database)['James Cameron']).to eq(expected['James Cameron'])
    end

    it "correctly totals 'Spike Lee'" do
      expect(directors_totals(directors_database)['Spike Lee']).to eq(expected['Spike Lee'])
    end

    it "correctly totals 'Wachowski Siblings'" do
      expect(directors_totals(directors_database)['Wachowski Siblings']).to eq(expected['Wachowski Siblings'])
    end

    it "correctly totals 'Robert Zemeckis'" do
      expect(directors_totals(directors_database)['Robert Zemeckis']).to eq(expected['Robert Zemeckis'])
    end

    it "correctly totals 'Quentin Tarantino'" do
      expect(directors_totals(directors_database)['Quentin Tarantino']).to eq(expected['Quentin Tarantino'])
    end

    it "correctly totals 'Martin Scorsese'" do
      expect(directors_totals(directors_database)['Martin Scorsese']).to eq(expected['Martin Scorsese'])
    end

    it "correctly totals 'Francis Ford Coppola'" do
      expect(directors_totals(directors_database)['Francis Ford Coppola']).to eq(expected['Francis Ford Coppola'])
    end
  end
end
