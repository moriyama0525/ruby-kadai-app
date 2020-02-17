class Braveman
  attr_accessor :hp, :attack, :guard

  def initialize(**params)
    @hp = params[:hp]
    @attack = params[:attack]
    @guard = params[:guard]
  end
end

class Monster
  attr_accessor :hp, :attack, :guard

  def initialize(**params)
    @hp = params[:hp]
    @attack = params[:attack]
    @guard = params[:guard]
  end
end

braveman = Braveman.new(hp: 100, attack: 40, guard: 20)
monster = Monster.new(hp: 50, attack: 30, guard: 20)

monster_damege = braveman.attack - monster.guard
braveman_damege = monster.attack - braveman.guard

loop do
  puts "勇者の攻撃"
  puts "モンスターへ#{monster_damege}のダメージ"
  monster.hp = monster.hp - monster_damege
  if monster.hp < 1
    puts "モンスターが倒れた"
    break
  else
    puts "モンスターの残りHPは#{monster.hp}"
    puts "モンスターの攻撃"
    puts "勇者に#{braveman_damege}のダメージ"
    braveman.hp = braveman.hp - braveman_damege

    if braveman.hp < 1
      puts "目の前が真っ暗になった"
      break
    end
  end
  puts "勇者の残りHPは#{braveman.hp}"
end
