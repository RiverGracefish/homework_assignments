require_relative '../../lib/cash_register'

describe CashRegister do
  before(:each) do
    @cash_register = CashRegister.new
  end

  it 'should be a cash register' do
    expect(subject).to be_a(CashRegister)
  end

  it 'should initialize total to zero' do
    expect(@cash_register.total).to eq(0)
  end

  describe 'purchases' do
    it 'should add purchases to total when amount > 0' do
      @cash_register.purchases(8)
      expect(@cash_register.total).to eq(8)
    end

    it 'should not add purchases to tatal when amount = 0' do
      @cash_register.purchases(0)
      expect(@cash_register.total).to eq(0)
    end
  end

  describe 'payment' do
    context 'when the amount is > 0' do
      context 'when the amount is < total' do
        it 'should subtract total to payment' do
          @cash_register.purchases(8)
          @cash_register.pay(4)
          expect(@cash_register.total).to eq(4)
        end
      end

      context 'when the amount is = total' do
        it 'should subtract total to payment, total = 0' do
          @cash_register.purchases(8)
          @cash_register.pay(8)
          expect(@cash_register.total).to eq(0)
        end
      end

      context 'when the amount is < total' do
        it 'should subtract total to payment, total = 0, give change' do
          @cash_register.purchases(8)
          @cash_register.pay(10)
          expect(@cash_register.total).to eq(2)
        end
      end
    end

    context 'when amount = 0' do
      it 'should not change the total' do
        @cash_register.purchases(9)
        @cash_register.pay(0)
        expect(@cash_register.total).to eq(9)
      end
    end
  end
end
