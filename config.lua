Config = {}

Config.Draw = { --2719.610107421875, 1362.27001953125, 24.52000045776367
	{ 
		x = -1084.4100341796875,
		y = -195.30999755859375,
		z = 37.58000183105469
	} -- 

}

Config.DeleteItem = { --2719.610107421875, 1362.27001953125, 24.52000045776367
	{ 
        x = -417.402, y = 1153.083, z = 324.87
	} -- 

}

Config.Center= {
	vector3(-1084.4100341796875, -195.30999755859375, 37.58000183105469)
}


Config.Box = {}

Config.Map = {
    crates = {
        {x = -1205.50, y = -297.212, z = 37.857 - 1 },
        {x = -883.072, y = -285.173, z = 40.524 - 1 },
        {x = -877.244, y = -113.067, z = 37.966 - 1 },
        {x = -991.882, y = 66.44181, z = 51.874 - 1 },
        {x = -1191.27, y = -114.843, z = 40.653 - 1 },
        {x = -1409.10, y = -70.0753, z = 52.766 - 1 },
        {x = -1245.49, y = -447.746, z = 33.595 - 1 },
        {x = -1009.70, y = -352.653, z = 37.895 - 1 }
    }
}

Config.Notification = {
    ['store_crate'] = 'Press [E] To Store Item',
    ['store_flag'] = 'Press ~INPUT_PICKUP~ To Capture This Flag',
    ['cancel_flag'] = 'Pres ~INPUT_VEH_DUCK~ To Cancel',
    ['store_airdrop'] = 'Press ~INPUT_PICKUP~ to get Airdrop',
    ['join_flag'] = 'Press [E] to join E-Sport 12-12',
    ['already_in'] = 'You are already in this game!',
    ['game_is_running'] = 'The game is running!'
}

Config.SupplyInCrate = {
    ['fixkit'] = {1, 2},
    ['aedwarzone'] = {1, 3},
    ['painkiller'] = {5, 10}
}

Config.ChaserBase = vector3(-532.7899780273438, -31.3700008392334, 44.52000045776367)
Config.ANTIFAKEBase = vector3(-1646.93994140625, -228.0399932861328, 55.93000030517578)
Config.XZEANTBase = vector3(-1262.6500244140625, 266.0299987792969, 64.20999908447266)
Config.MadisusBase = vector3(-1172.25, -735.219970703125, 20.17000007629394)
Config.AshwinderBase = vector3(-840.4099731445312, -695.4500122070312, 27.36000061035156)
Config.ClariceBase = vector3(-942.760009765625, 309.2699890136719, 71.22000122070312)
-- Config.OxyBase = vector3(-1374.27001953125, 19.01, 53.59000015258789)
Config.NintyNineBase = vector3(-576.1400146484375, -450.3599853515625, 34.22999954223633)
Config.ZETYHORBase = vector3(-1500.1500244140625, -519.4000244140625, 32.81000137329101)
Config.Hospital = vector3(-455.80999755859375, -361.5899963378906, 33.84000015258789)

Config.Blips = {
	BlipsEsport = {
		Pos = {
            {
                coords = vector3(-1084.4100341796875, -195.30999755859375, 37.58000183105469),
                radius = true,
                Size = 600.0,
                ColorRadius = 1,
                Alpha = 100,
			},  
			{
                coords = vector3(-532.7899780273438, -31.3700008392334, 44.52000045776367),
                heal = vector3(-525.5399780273438, -17.46999931335449, 43.45999908447265), 
                npc = vector3(-520.1799926757812, -26.42000007629394, 45.61000061035156),
                index = 'first',
                sprite = 417,
                scale = 1.0,
                color = 2,
                text =  '<font face="font4thai">BASE CHASER',
                radius = false,
                Size = 150.0,
                ColorRadius = 1,
                Alpha = 100,
			},  
            {
                coords = vector3(-1646.93994140625, -228.0399932861328, 55.93000030517578),
                heal = vector3(-1650.1500244140625, -224.55999755859375, 54.04999923706055), 
                npc = vector3(-1653.5899658203125, -234.3699951171875, 55.0099983215332),
                index = 'two',
                sprite = 417,
                scale = 1.0,
                color = 0,
                text =  '<font face="font4thai">BASE ANTIFAKE',
                radius = false,
                Size = 150.0,
                ColorRadius = 1,
                Alpha = 100,
			},  
            {
                coords = vector3(-1262.6500244140625, 266.0299987792969, 64.20999908447266),
                heal = vector3(-1275.550048828125, 254.4499969482422, 62.63999938964844), 
                npc = vector3(-1262.260009765625, 277.7099914550781, 64.7699966430664),
                index = 'three',
                sprite = 417,
                scale = 1.0,
                color = 40,
                text =  '<font face="font4thai">BASE XZEANT',
                radius = false,
                Size = 150.0,
                ColorRadius = 1,
                Alpha = 100,
			},  

            {
                coords = vector3(-1172.25, -735.219970703125, 20.17000007629394), 
                heal = vector3(-1169.3599853515625, -747.969970703125, 18.39999961853027),
                npc = vector3(-1160.949951171875, -741.3699951171875, 19.63999938964843),
                index = 'four',
                sprite = 417,
                scale = 1.0,
                color = 1,
                text =  '<font face="font4thai">BASE MADISUS',
                radius = false,
                Size = 150.0,
                ColorRadius = 1,
                Alpha = 100,
			},  

            {
                coords = vector3(-840.4099731445312, -695.4500122070312, 27.36000061035156), 
                heal = vector3(-840.8300170898438, -685.6400146484375, 26.2800006866455),
                npc = vector3(-828.52001953125, -690.2000122070312, 28.05999946594238),
                index = 'five',
                sprite = 417,
                scale = 1.0,
                color = 3,
                text =  '<font face="font4thai">BASE ASHWINDER',
                radius = false,
                Size = 150.0,
                ColorRadius = 1,
                Alpha = 100,
			},  

            {
                coords = vector3(-942.760009765625, 309.2699890136719, 71.22000122070312), 
                heal = vector3(-950.0900268554688, 307.2799987792969, 70.05000305175781),
                npc = vector3(-945.3200073242188, 312.1900024414063, 71.33000183105469),
                index = 'six',
                sprite = 417,
                scale = 1.0,
                color = 8,
                text =  '<font face="font4thai">BASE CLARICE',
                radius = false,
                Size = 150.0,
                ColorRadius = 1,
                Alpha = 100,
			}, 
            
            -- {
            --     coords = vector3(-1374.27001953125, 19.01, 53.59000015258789), 
            --     heal = vector3(-1358.6500244140625, 22.48999977111816, 52.4900016784668),
            --     npc = vector3(-1368.489990234375, 22.1299991607666, 53.77999877929687),
            --     index = 'seaven',
            --     sprite = 417,
            --     scale = 1.0,
            --     color = 40,
            --     text =  '<font face="font4thai">BASE เมาออกซิเจน',
            --     radius = false,
            --     Size = 150.0,
            --     ColorRadius = 1,
            --     Alpha = 100,
			-- },

            {
                coords = vector3(-576.1400146484375, -450.3599853515625, 34.22999954223633), 
                heal = vector3(-557.77001953125, -444.2699890136719, 33.29999923706055),
                npc = vector3(-585.1900024414062, -442.94000244140625, 34.29999923706055),
                index = 'eight',
                sprite = 417,
                scale = 1.0,
                color = 5,
                text =  '<font face="font4thai">BASE NinetyNine',
                radius = false,
                Size = 150.0,
                ColorRadius = 1,
                Alpha = 100,
			},

            {
                coords = vector3(-1500.1500244140625, -519.4000244140625, 32.81000137329101), 
                heal = vector3(-1488.43994140625, -519.3800048828125, 31.81000137329101),
                npc = vector3(-1479.02001953125, -518.5, 34.7400016784668),
                index = 'nine',
                sprite = 417,
                scale = 1.0,
                color = 27,
                text =  '<font face="font4thai">BASE ZETYHOR',
                radius = false,
                Size = 150.0,
                ColorRadius = 1,
                Alpha = 100,
			},
		}	
	},
}


