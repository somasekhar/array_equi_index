require './lib/array'

describe Array do

  def get_equilibrium_indexes(arr)
    arr.equilibrium_indexes
  end

  it 'should find equilibrium indexes for random array' do
    expect(
        get_equilibrium_indexes([-7, 1, 5, 2, -4, 3, 0])
    ).to eq [3, 6]
  end

  it 'should find equilibrium when single element' do
    expect(
        get_equilibrium_indexes([1])
    ).to eq [0]
  end

  it 'should find equilibrium when single zero element' do
    expect(
        get_equilibrium_indexes([0])
    ).to eq [0]
  end

  it 'should find equilibrium when empty array' do
    expect(
        get_equilibrium_indexes([])
    ).to eq []
  end

end