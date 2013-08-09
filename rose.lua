function create_items()
  vest = { name='+5 dexterity vest', sell_in=10, quality=20 }
  brie = { name='aged brie', sell_in=2, quality=0 }
  elixir = { name='elixir of the mongoose', sell_in=5, quality=7 }
  sulfuras = { name='sulfuras, hand of ragnaros', sell_in=0, quality=80 }
  passes = { name='backstage passes to TAFKAL80ETC concert', sell_in=15, quality=20 }
  cake = { name='conjured mana cake', sell_in=3, quality=6 }
  return { vest, brie, elixir, sulfuras, passes, cake }
end

function update_quality(items)
  for i=1,#items do
    if (items[i].name ~= 'aged brie' and items[i].name ~= 'backstage passes to TAFKAL80ETC concert') then
      if (items[i].quality > 0) then
        if (items[i].name ~= 'sulfuras, hand of ragnaros') then
          items[i].quality = items[i].quality - 1
        end
      end
    else
      if (items[i].quality < 50) then
        items[i].quality = items[i].quality + 1
        if (items[i].name == 'backstage passes to TAFKAL80ETC concert') then
          if (items[i].sell_in < 11) then
            if (items[i].quality < 50) then
              items[i].quality = items[i].quality + 1
            end
          end
          if (items[i].sell_in < 6) then
            if (items[i].quality < 50) then
              items[i].quality = items[i].quality + 1
            end     
          end   
        end
      end
    end
    if (items[i].name ~= 'sulfuras, hand of ragnaros') then
      items[i].sell_in = items[i].sell_in - 1
    end
    if (items[i].sell_in < 0) then
      if (items[i].name ~= 'aged brie') then
        if (items[i].name ~= 'backstage passes to TAFKAL80ETC concert') then
          if (items[i].quality > 0) then
            if (items[i].name ~= 'sulfuras, hand of ragnaros') then
              items[i].quality = items[i].quality - 1
            end
          end
        else
          items[i].quality = items[i].quality - items[i].quality
        end
      else
        if (items[i].quality < 50) then
          items[i].quality = items[i].quality + 1
        end
      end 
    end
  end
end

--for i, item in ipairs(items) do
--  print(item.name)
--  print(item.sell_in)
--  print(item.quality)
--end

--update_quality()

--for i, item in ipairs(items) do
--  print(item.name)
--  print(item.sell_in)
--  print(item.quality)
--end
