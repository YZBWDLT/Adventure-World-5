say 所有游戏流程可搭建建筑都已经清除！远处的地方可能没执行，建议靠近再运行一遍。

#house_heart
fill -195 31 144 -181 41 159 air
fill -195 30 144 -181 30 160 grass_block
fill -192 30 161 -192 30 164 sand
kill @e[x=-195,y=31,z=144,dx=14,dy=10,dz=16]

#house_hint
fill -160 31 142 -150 46 160 air
fill -155 30 159 -155 30 164 grass_block
kill @e[x=-160,y=31,z=142,dx=10,dy=15,dz=18]

#house_potion
fill -178 31 145 -165 38 157 air
fill -178 30 145 -165 30 164 grass_block
kill @e[x=-178,y=31,z=145,dx=13,dy=7,dz=12]

#tower
fill -177 31 125 -167 58 135 air

#station_south
fill -189 31 169 -147 40 191 air
fill -191 40 170 -144 63 194 air
fill -187 30 168 -148 30 191 grass_block
kill @e[x=-191,y=31,z=169,dx=47,dy=32,dz=25]

#map
structure load other:map_empty -230 31 103
fill -231 30 114 -227 30 114 grass_block
kill @e[x=-230,y=31,z=103,dx=19,dy=6,dz=16]

#station
fill -250 31 109 -235 42 126 air
fill -250 30 109 -235 30 126 grass_block
clone -259 5 136 -245 21 149 -259 31 121

#portal
fill -244 31 136 -242 35 142 air
fill -241 30 138 -235 30 140 grass_block

#dock
fill -223 31 171 -208 37 191 air
fill -223 30 186 -210 30 191 water
fill -221 30 168 -220 30 174 sand

#bridge
fill -201 31 9 -198 34 25 air
clone -205 31 14 -202 32 15 -201 31 14

#color
fill -293 31 83 -274 41 99 air
fill -293 30 83 -274 30 99 grass_block
kill @e[x=-293,y=31,z=83,dx=19,dy=10,dz=16]

#station_farm
fill -306 31 83 -297 39 94 air
fill -306 30 83 -297 30 94 grass_block

#dock_farm
fill -320 31 83 -310 35 97 air
fill -320 30 83 -310 30 97 grass_block

#desert_bridge
fill -141 31 26 -136 34 30 air
fill -135 33 26 -134 34 30 air

#pass
fill -101 16 8 -97 24 19 air
fill -100 24 20 -98 26 20 hardened_clay
fill -100 23 21 -98 30 30 sand

#billboard
fill -204 31 121 -203 32 121 air

#林场
structure load other:tree1 -189 31 101
structure load other:tree2 -164 36 101

#新船
fill -320 29 193 -294 30 201 water
fill -320 31 193 -294 47 201 air