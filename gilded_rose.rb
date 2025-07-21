class Item
  attr_accessor :name, :sell_in, :quality
  
  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end
end

$items = []

$items += [Item.new('+5 Dexterity Vest', 10, 20)]
$items += [Item.new('Aged Brie', 2, 0)]
$items += [Item.new('Elixir of the Mongoose', 5, 7)]
$items += [Item.new('Sulfuras, Hand of Ragnaros', 0, 80)]
$items += [Item.new('Backstage passes to a TAFKAL80ETC concert', 15, 20)]

class ItemUpdater
  def initialize(item)
    @item = item
  end

  def update
    return if legendary?
    
    update_quality
    decrease_sell_in
    update_expired if expired?
  end

  private

  def update_quality
    case @item.name
    when 'Aged Brie'
      increase_quality
    when 'Backstage passes to a TAFKAL80ETC concert'
      update_backstage_passes
    else
      decrease_quality
    end
  end

  def update_backstage_passes
    increase_quality
    increase_quality if @item.sell_in <= 10
    increase_quality if @item.sell_in <= 5
  end

  def decrease_sell_in
    @item.sell_in -= 1
  end

  def update_expired
    case @item.name
    when 'Aged Brie'
      increase_quality
    when 'Backstage passes to a TAFKAL80ETC concert'
      @item.quality = 0
    else
      decrease_quality
    end
  end

  def increase_quality
    @item.quality += 1 if @item.quality < 50
  end

  def decrease_quality
    @item.quality -= 1 if @item.quality > 0
  end

  def expired?
    @item.sell_in < 0
  end

  def legendary?
    @item.name == 'Sulfuras, Hand of Ragnaros'
  end
end

def update_quality_sellin
  $items.each { |item| ItemUpdater.new(item).update }
end
