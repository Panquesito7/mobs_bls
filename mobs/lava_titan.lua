mobs:register_mob("bls_mobs:lava_titan", {
    type = "monster",
    hp_max = 180,
    hp_min = 180,
    collisionbox = {-0.45, -0.05, -0.45, 0.45, 1.8, 0.45},
    visual = "mesh",
    mesh = "lava_titan.x",
    textures = {{"lava_titan.png"}},
    visual_size = {x=2.7, y=2.7},
    makes_footstep_sound = true,
    view_range = 20,
    fear_height = 4,
    lifetimer = 500,
    walk_velocity = 0.5,
    run_velocity = 1.3,
    floats = 1,
    sounds = {
        random = "lava_titan",
    },
    damage = 8,
    jump = false,
    jump_height=0,
    drops = {
		{name = "bls_mobs:life_energy",
		chance = 1,
		min = 7,
		max = 9,},
		{name = "bls_mobs:lava_titan_eye",
		chance = 1,
		min = 1,
		max = 1,},
		{name = "bucket:bucket_lava",
		chance = 2,
		min = 1,
		max = 3,},
    },
    armor = 20,
    drawtype = "front",
    water_damage = 25,
      rotate = 270,
    light_damage = 0,
    lava_damage = 0,
    on_rightclick = nil,
    floats = 0,
    blood_texture="stone_blood.png",
    blood_amount=50,
    knock_back=0,
    attack_type = "dogshoot",
    dogshoot_switch = true,
      arrow = "bls_mobs:lava_arrow",
      shoot_interval = 2,
      shoot_offset = 0,
    animation = {
        speed_normal = 25,
        speed_run = 45,
        stand_start = 120,
        stand_end = 300,
        walk_start = 10,
        walk_end = 110,
        run_start = 10,
        run_end = 110,
        punch_start = 301,
        punch_end = 340,
        shoot_start =340,
        shoot_end=400,
    },
    do_custom = function (self)
        bls_mobs.digging_attack(self, nil, self.run_velocity, {x=0, y=4, z=0})
    end,
})


mobs:spawn_specific(
    "bls_mobs:lava_titan",
    {"caverealms:hot_cobble"}, -- nodes
    {"air"}, -- neighbors
    0, -- min_light
    13, -- max_light
    10, -- interval
    5000000/bls_mobs.multimobs, -- chance
    1, -- aoc
    -5000, -- min_height
    -4000 -- max_height
)
