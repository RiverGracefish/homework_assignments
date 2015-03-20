require '../lib/cash_register'

describe CashRegister do
  it 'should be a cashregister' do
    expect(subject).to be_a(CashRegister)
  end

  it 'should initialize total to zero' do
    expect(@cashregister.total).to eq(0)
  end

  describe 'purchases' do
    it 'should add purchases to total when amount > 0' do
      @cashregister.purchases(8)
      expect(@cashregister.total).to eq(8)
    end

    it 'should not add purchases to tatal when amount = 0' do
      @cashregister.purchases(0)
      expect(@cashregister.total).to eq(0)
    end
  end

  describe 'payment' do
    context 'when the amount is > 0' do
      context 'when the amount is < total' do
        it 'should subtract total to payment' do
          @cashregister.purchases(8)
          @cashregister.pay(4)
          expect(@cashregister.total).to eq(4)
        end
      end

      context 'when the amount is = total' do
        it 'should subtract total to payment, total = 0' do
          @cashregister.purchases(8)
          @cashregister.pay(8)
          expect(@cashregister.total).to eq(0)
        end
      end

      context 'when the amount is < total' do
        it 'should subtract total to payment, total = 0, give change' do
          @cashregister.purchases(8)
          @cashregister.pay(10)
          expect(@cashregister.total).to eq(2)
        end
      end
    end

    context 'when amount = 0' do
      it 'should not change the total' do
        @cashregister.purchases(8)
        @cashregister.pay(0)
        expect(@cashregister.total).to (8)
      end
    end
  end
end
