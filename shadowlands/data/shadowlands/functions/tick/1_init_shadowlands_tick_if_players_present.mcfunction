#Deactivate bossbars if out of range
bossbar set grandevoker players @a[x=4501.00,y=32.00,z=1449,distance=..80]
bossbar set spiderlord players @a[x=4510,y=30,z=1378,distance=..80]
bossbar set deathdiviner players @a[x=4372,y=12,z=1448,distance=..80]

execute if entity @a[x=4190,y=0,z=1240,dx=439,dy=140,dz=461] run function shadowlands:tick/2_shadowlands_tick