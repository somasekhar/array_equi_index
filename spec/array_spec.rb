require './lib/array'

describe Array do

  before(:all) do
    @report = []
  end

  def get_equilibrium_indexes(arr)
    time = Benchmark.measure do
      @indexes = arr.equilibrium_indexes
    end

    @report << "Benchmark for input #{arr} & result #{@indexes} is #{time}"

    @indexes
  end

  after(:all) do
    puts "\n\nBenchmark Results\n"
    puts @report
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

  it 'should find equilibrium for trivial pyramid' do
    expect(
        get_equilibrium_indexes([1, 2, 3, 4, 3, 2, 1])
    ).to eq [3]
  end

  it 'should find equilibrium when biggest first' do
    expect(
        get_equilibrium_indexes([101, 10, 76, 24, 1])
    ).to eq [1]
  end

  it 'should find equilibrium when biggest last' do
    expect(
        get_equilibrium_indexes([66, 32, 1, 0, 99])
    ).to eq [3]
  end



end