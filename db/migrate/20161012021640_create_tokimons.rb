class CreateTokimons < ActiveRecord::Migration
  def change
    create_table :tokimons do |t|
      t.string :name
      t.text :description
      t.integer :weight
      t.integer :height
      t.integer :fly
      t.integer :fight
      t.integer :fire
      t.integer :water
      t.integer :electric
      t.integer :ice
      t.integer :total

      t.timestamps null: false
    end
  end
end


#t1 = Tokimon.new("name"=>"Catmon", "description"=>"The cattest of mons", "weight"=>90, "height"=>110, "fly"=>40, "fight"=>60, "fire"=>20, "water"=>30, "electric"=>40, "ice"=>20, "total"=>210)
#t2 = Tokimon.new("name"=>"BetterThanDragonite", "description"=>"It's better than Dragonite in every way, also better than Salamence too!", "weight"=>300, "height"=>270, "fly"=>90, "fight"=>80, "fire"=>90, "water"=>70, "electric"=>70, "ice"=>40, "total"=>440)
#t3 = Tokimon.new("name"=>"Rei-qwazza", "description"=>"The legendary Tokimon! It moves mountains with one finger", "weight"=>250, "height"=>600, "fly"=>100, "fight"=>50, "fire"=>100, "water"=>90, "electric"=>90, "ice"=>70, "total"=>500)
#t4 = Tokimon.new("name"=>"CopyGuy", "description"=>"Copies any Tokimon, like a kid copying off answers from a test, 'cause it has no real abilities of it's own", "weight"=>10, "height"=>30, "fly"=>20, "fight"=>10, "fire"=>25, "water"=>25, "electric"=>25, "ice"=>25, "total"=>130)
#t5 = Tokimon.new("name"=>"Chair", "description"=>"A tool designed for people to sit on", "weight"=>60, "height"=>60, "fly"=>50, "fight"=>30, "fire"=>30, "water"=>40, "electric"=>40, "ice"=>50, "total"=>240)
#t6 = Tokimon.new("name"=>"RhyOh", "description"=>"A rhyno that runs around and stuff", "weight"=>300, "height"=>200, "fly"=>10, "fight"=>40, "fire"=>15, "water"=>15, "electric"=>20, "ice"=>10, "total"=>110)
#t7 = Tokimon.new("name"=>"RhyNo", "description"=>"A rhyno that runs faster than RhyOh", "weight"=>400, "height"=>250, "fly"=>15, "fight"=>60, "fire"=>35, "water"=>25, "electric"=>35, "ice"=>30, "total"=>200)
#t8 = Tokimon.new("name"=>"RhyOhNo", "description"=>"the king of rhynos", "weight"=>450, "height"=>350, "fly"=>20, "fight"=>85, "fire"=>50, "water"=>40, "electric"=>50, "ice"=>60, "total"=>305)
#t9 = Tokimon.new("name"=>"EeveeEon", "description"=>"A creature prone to different evolutions", "weight"=>50, "height"=>40, "fly"=>40, "fight"=>40, "fire"=>10, "water"=>10, "electric"=>5, "ice"=>5, "total"=>110)
#t10 = Tokimon.new("name"=>"SuperEevee", "description"=>"Like EeveeEon, but supered", "weight"=>40, "height"=>80, "fly"=>65, "fight"=>65, "fire"=>40, "water"=>90, "electric"=>40, "ice"=>40, "total"=>340)
#t11 = Tokimon.new("name"=>"SuperEon", "description"=>"An EeveeEon that's become one with the ion", "weight"=>80, "height"=>40, "fly"=>75, "fight"=>75, "fire"=>90, "water"=>40, "electric"=>30, "ice"=>30, "total"=>340)
#t12 = Tokimon.new("name"=>"AntiEeveeEon", "description"=>"The evil EeveeEon that tries it's best to deceive", "weight"=>60, "height"=>60, "fly"=>35, "fight"=>35, "fire"=>55, "water"=>55, "electric"=>80, "ice"=>80, "total"=>340)
#t13 = Tokimon.new("name"=>"Mega Mewtwo Z", "description"=>"Mewtwo's third form! Mega Mewtwo X and Y don't stand a chance!1!1", "weight"=>70, "height"=>180, "fly"=>75, "fight"=>85, "fire"=>100, "water"=>90, "electric"=>100, "ice"=>90, "total"=>540)
#t14 = Tokimon.new("name"=>"Godmon", "description"=>"Created the universe with 2^100 arms", "weight"=>300, "height"=>300, "fly"=>100, "fight"=>100, "fire"=>100, "water"=>100, "electric"=>100, "ice"=>100, "total"=>600)
#t15 = Tokimon.new("name"=>"", "description"=>"", "weight"=>, "height"=>, "fly"=>, "fight"=>, "fire"=>, "water"=>, "electric"=>, "ice"=>, "total"=>)
#t16 = Tokimon.new("name"=>"", "description"=>"", "weight"=>, "height"=>, "fly"=>, "fight"=>, "fire"=>, "water"=>, "electric"=>, "ice"=>, "total"=>)
#t17 = Tokimon.new("name"=>"", "description"=>"", "weight"=>, "height"=>, "fly"=>, "fight"=>, "fire"=>, "water"=>, "electric"=>, "ice"=>, "total"=>)
