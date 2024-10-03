execute as @e[type=minecraft:creaking, tag=!weeping,tag=!angel,name="weeping"] run tag @s add weeping
execute as @e[type=minecraft:creaking, tag=!weeping,tag=!angel,name="Weeping"] run tag @s add weeping
execute as @e[type=minecraft:creaking, tag=!weeping,tag=!angel,name="weeping angel"] run tag @s add weeping
execute as @e[type=minecraft:creaking, tag=!weeping,tag=!angel,name="Weeping Angel"] run tag @s add weeping
execute as @e[type=minecraft:creaking, tag=!weeping,tag=!angel,name="angel"] run tag @s add weeping
execute as @e[type=minecraft:creaking, tag=!weeping,tag=!angel,name="Angel"] run tag @s add weeping

execute as @e[type=minecraft:creaking, tag=weeping] run effect give @s invisibility infinite 1 true
execute as @e[type=minecraft:creaking, tag=weeping] run attribute @s minecraft:max_health base set 100.0
execute as @e[type=minecraft:creaking, tag=weeping] run attribute @s minecraft:attack_damage base set 50.0
execute as @e[type=minecraft:creaking, tag=weeping] run attribute @s minecraft:movement_speed base set 0.9
execute as @e[type=minecraft:creaking, tag=weeping] run data modify entity @s Health set value 100.0
execute as @e[type=minecraft:creaking, tag=weeping] at @s run summon item_display ~ ~ ~ {item_display:"head",Tags:["weeping"],item:{id:"minecraft:stone",count:1,components:{"minecraft:custom_model_data":1}}}
execute as @e[type=minecraft:item_display, tag=weeping] at @s run ride @s mount @e[type=minecraft:creaking, tag=weeping, limit=1,sort=nearest]
execute as @e[tag=weeping] run tag @s add angel
execute as @e[tag=weeping, tag=angel] run tag @s remove weeping
execute as @e[tag=angel,type=minecraft:creaking] at @s run rotate @e[type=minecraft:item_display,tag=angel,sort=nearest,limit=1] ~ 0
execute as @e[type=minecraft:item_display,tag=angel] unless predicate weeping_creaks:is_riding_creaking run kill @s
