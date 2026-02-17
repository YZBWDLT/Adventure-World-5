# ===== 变化迷宫 =====

#平原迷宫
clone -257 31 24 -256 36 25 -255 31 24
clone -257 31 24 -256 36 25 -253 31 22
clone -257 31 24 -256 36 25 -251 31 32
clone -257 31 24 -256 36 25 -247 31 32
clone -257 31 24 -256 36 25 -245 31 46
clone -257 31 24 -256 36 25 -243 31 44
clone -257 31 24 -256 36 25 -245 31 42
clone -257 31 24 -256 36 25 -241 31 38
clone -257 31 24 -256 36 25 -239 31 36
clone -257 31 24 -256 36 25 -231 31 44
clone -257 31 24 -256 36 25 -233 31 42
clone -257 31 24 -256 36 25 -237 31 30
clone -257 31 24 -256 36 25 -235 31 28
clone -257 31 24 -256 36 25 -235 31 24
clone -257 31 24 -256 36 25 -237 31 22
execute if block -256 31 54 redstone_lamp run fill -255 31 24 -254 36 25 air
execute if block -256 31 54 lit_redstone_lamp run fill -253 31 22 -252 36 23 air
execute if block -254 31 58 redstone_lamp run fill -247 31 32 -246 36 33 air
execute if block -254 31 58 lit_redstone_lamp run fill -251 31 32 -250 36 33 air
execute if block -252 31 64 redstone_lamp run fill -243 31 44 -242 36 45 air
execute if block -252 31 64 lit_redstone_lamp run fill -245 31 42 -244 36 43 air
execute if block -252 31 64 lit_redstone_lamp run fill -245 31 46 -244 36 47 air
execute if block -250 31 60 redstone_lamp run fill -239 31 36 -238 36 37 air
execute if block -250 31 60 lit_redstone_lamp run fill -241 31 38 -240 36 39 air
execute if block -246 31 64 redstone_lamp run fill -233 31 42 -232 36 43 air
execute if block -246 31 64 lit_redstone_lamp run fill -231 31 44 -230 36 45 air
execute if block -248 31 56 redstone_lamp run fill -237 31 30 -236 36 31 air
execute if block -248 31 56 lit_redstone_lamp run fill -235 31 28 -234 36 29 air
execute if block -248 31 54 redstone_lamp run fill -237 31 22 -236 36 23 air
execute if block -248 31 54 lit_redstone_lamp run fill -235 31 24 -234 36 25 air
scoreboard players operation plain_maze_old data = plain_maze_new data