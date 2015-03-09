require '../lib/cash_register'

describe CashRegister do
  before do
    @cashregister = CashRegister.new
  end

  it 'should be a cashregister' do
    expect(subject.CashRegister?(''))to be_truthy
  end

  it 'should initialize total to zero' do
    expect(@cashregister.total(0))to be_truthy
  end

  describe 'purchases' do
    it 'should add purchases to total when amount > 0' do
      @cashregister.purchases(8)
      expect(@cashregister.total(8))to be_truthy
    end

    it 'should not add purchases to tatal when amount = 0' do
      @cashregister.purchases(0)
      expect(@cashregister.total(0)).to be_truthy
    end
  end

  describe 'payment' do
    context 'when the amount is > 0' do
      context 'when the amount is < total' do
        it 'should subtract total to payment' do
          @cashregister.purchases(8)
          @cashregister.pay(4)
          expect(@cashregister.total(4))to be_truthy
        end
      end

      context 'when the amount is = total' do
        it 'should subtract total to payment, total = 0' do
          @cashregister.purchases(8)
          @cashregister.pay(8)
          expect(@cashregister.total(0))to be_truthy
        end
      end

      context 'when the amount is < total' do
        it 'should subtract total to payment, total = 0, give change' do
          @cashregister.purchases(8)
          @cashregister.pay(10)
          expect(@cashregister.total(2))to be_truthy
        end
      end
    end

    context 'when amount = 0' do
      it 'should not change the total' do
        @cashregister.purchases(8)
        @cashregister.pay(0)
        expect(@cashregister.total(8))to be_truthy
      end
    end
  end
end
