class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.string :name
      t.text :description
      t.integer :level

      t.timestamps null: false
    end
  end
end


#p1 = Trainer.new("name"=>"Erca", "description"=>"Some random cat person devoted to playing this game.", "level"=>3)
#p2 = Trainer.new("name"=>"Steve", "description"=>"That chemist guy with the glasses. He's the best there is.", "level"=>4)
#p3 = Trainer.new("name"=>"Anne", "description"=>"A random girl that plays the game too competetively.", "level"=>2)
#p4 = Trainer.new("name"=>"Tikee", "description"=>"A guy who doesn't care about Tokimon, but plays anyway.", "level"=>1)
#p5 = Trainer.new("name"=>"Johnny", "description"=>"He sucks at this game, but he has WILLPOWER!", "level"=>1)
