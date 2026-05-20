# frozen_string_literal: true

class Bottles
  def verse(number)
    case number
    when 1
      <<~VERSE
        1 bottle of beer on the wall, 1 bottle of beer.
        Take it down and pass it around, no more bottles of beer on the wall.
      VERSE
    when 2
      <<~VERSE
        2 bottles of beer on the wall, 2 bottles of beer.
        Take one down and pass it around, 1 bottle of beer on the wall.
      VERSE
    when 0
      <<~VERSE
       No more bottles of beer on the wall, no more bottles of beer.
       Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
     else
      <<~VERSE
        #{number} bottles of beer on the wall, #{number} bottles of beer.
        Take one down and pass it around, #{number - 1} bottles of beer on the wall.
      VERSE
    end
  end
  def verses(start, finish)
    start.downto(finish).map { |number| verse(number) }.join("\n") + "\n"
  end
  def sing
    verses(99, 0)
  end
  end