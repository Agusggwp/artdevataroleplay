return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		limit = 3,
		client = {
			status = { hunger = 400000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			test = 'what an amazingly delicious burger, amirite?'
		}
	},

	
	['bandage'] = {
		label = 'Bandage',
		weight = 15,
		client = {
			anim = { dict = 'amb@world_human_clipboard@male@idle_a', clip = 'idle_c', flag = 49 },
			prop = { model = `prop_ld_health_pack`, pos = vec3(0.15, 0.08, 0.1), rot = vec3(180.0, 220.0, 0.0)},
			disable = { move = true, car = true, combat = true },
			usetime = 2500,

		}
	},

	['antidepresan'] = {
		label = 'Anti Depresan',
		weight = 220,
		client = {
			status = { stress = 1 },
			anim = { dict = 'amb@world_human_clipboard@male@idle_a', clip = 'idle_c', flag = 49 },
			prop = { model = `prop_ld_health_pack`, pos = vec3(0.15, 0.08, 0.1), rot = vec3(180.0, 220.0, 0.0)},
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
			notification = 'Kamu Sudah Terobati'
		},
	},
	
	['black_money'] = {
		label = 'Dirty Money',
	},
	-- Makanan --
	['burger'] = {
		label = 'Burger',
		weight = 20,
		client = {
			status = { hunger = 400000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},
	['roti'] = {
		label = 'Roti',
		weight = 20,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious roti'
		},
	},
	['ramen'] = {
		label = 'Ramen',
		weight = 20,
		client = {
			status = { hunger = 400000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious Ramen'
		},
	},
	['sushi'] = {
		label = 'Sushi',
		weight = 20,
		client = {
			status = { hunger = 400000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious Sushi'
		},
	},
	['satekulit'] = {
		label = 'Sate Kulit',
		weight = 20,
		client = {
			status = { hunger = 400000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious Sate Kulit'
		},
	},
	['pizza'] = {
		label = 'Pizza Pelakor Jawir',
		weight = 20,
		client = {
			status = { hunger = 400000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious Pizza'
		},
	},
	['nasikatsu'] = {
		label = 'Nasi Katsu',
		weight = 20,
		client = {
			status = { hunger = 400000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious Nasi Katsu'
		},
	},
	-- Minuman --
	['cola'] = {
		label = 'Coca-Cola',
		weight = 10,
		client = {
			status = { thirst = 400000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},
	['jusjeruk'] = {
		label = 'Jus Jeruk',
		weight = 10,
		client = {
			status = { thirst = 400000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with Jus Jeruk'
		}
	},
	['kopi'] = {
		label = 'Kopi',
		weight = 10,
		client = {
			status = { thirst = 400000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with Kopi'
		}
	},
	['icetea'] = {
		label = 'Es Teh',
		weight = 10,
		client = {
			status = { thirst = 400000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with Es Teh'
		}
	},
	['soju'] = {
		label = 'Soju',
		weight = 10,
		client = {
			status = { drunk = 20000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Astaghfirullah, anda mabok.'
		}
	},

	['amer'] = {
		label = 'Anggur Merah',
		weight = 10,
		client = {
			status = { drunk = 20000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Astaghfirullah, anda mabok.'
		}
	},

	['arak'] = {
		label = 'Arak',
		weight = 10,
		client = {
			status = { drunk = 30000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Astaghfirullah, anda mabok.'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['medikit'] = {
		label = 'Medkit',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
		consume = 0,
		client = {
			anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer' },
			disable = { move = true, car = true, combat = true },
			usetime = 5000,
			cancel = true
		}
	},

	['phone'] = {
		label = 'Phone',
		weight = 1,
		stack = false,
		consume = 0,
	},

	['bread'] = {
		label = 'Bread',
		weight = 190,
		stack = false,
		consume = 0,
	},

	['nitrocannister'] = {
		label = 'Nitro Can',
		weight = 100,
		stack = false,
		consume = 0,
	},

	['wrench'] = {
		label = 'Wrench',
		weight = 100,
		stack = false,
		consume = 0,
	},

	['radio'] = {
		label = 'Radio',
		weight = 1,
		stack = false,
		consume = 0,
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['hack_usb'] = {
		label = 'hack_usb',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['moneywash_card'] = {
		label = 'moneywash_card',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['armor'] = {
		label = 'Armor',
		weight = 120,
		stack = true,
		close = true,
		description = 'Armor',
	},

	['copper'] = {
		label = 'Tembaga',
		weight = 120,
		stack = true,
		close = true,
		description = '',
	},

	-- Mech Item

	['fixkit'] = {
        label = 'Repair Kit',
        weight = 50,
        stack = false,
        close = true,
        consume = 0,
    },

	['ore_coal'] = {
		label = 'Coal Ore',
		weight = 5,
		stack = true,
		close = true,
		description = ''
	},

	['ore_iron'] = {
		label = 'Iron Ore',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['ore_gold'] = {
		label = 'Gold Ore',
		weight = 25,
		stack = true,
		close = true,
		description = ''
	},

	['ore_diamond'] = {
		label = 'Diamond Ore',
		weight = 50,
		stack = true,
		close = true,
		description = ''
	},

	['diamond'] = {
		label = 'Diamond',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['gold'] = {
		label = 'Gold',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['iron'] = {
		label = 'Iron',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['coal'] = {
		label = 'Coal',
		weight = 50,
		stack = true,
		close = true,
		description = ''
	},

	['wool'] = {
		label = 'Wool',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['ttyyanderkit'] = {
		label = 'Staterpack Kit',
		weight = 120,
		stack = true,
		close = true,
		description = 'You Claimed A Starterpack'
	},

	['fabric'] = {
		label = 'Fabric',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['clothe'] = {
		label = 'Clothe',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['wood'] = {
		label = 'Wood',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['packaged_wood'] = {
		label = 'Packed Wood',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['fish'] = {
		label = 'Fish',
		weight = 50,
		stack = true,
		close = true,
		description = ''
	},

	['alive_chicken'] = {
		label = 'Alive Chicken',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['slaughtered_chicken'] = {
		label = 'Slaughtered Chicken',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['padi'] = {
        label = 'Padi',
		description = 'padi yang bagus, jual ke pemilik restaurant di kota untuk harga yg mahal/ jual ke toko buah',
        weight = 1000,
        stack = true,
        close = true,
    },

	['potatoe'] = {
        label = 'potatoe',
		description = 'potatoe yang bagus, jual ke pemilik restaurant di kota untuk harga yg mahal/ jual ke toko buah',
        weight = 1000,
        stack = true,
        close = true,
    },

	['packaged_chicken'] = {
		label = 'Kemasan Ayam',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['fishbait'] = {
		label = 'fish bait',
		weight = 30,
		stack = true,
		close = true,
		description = ''
	},

	['fishingrod'] = {
		label = 'fishing rod',
		weight = 2,
		stack = true,
		close = true,
		description = ''
	},

	['shark'] = {
		label = 'shark',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['turtle'] = {
		label = 'sea turtle',
		weight = 3,
		stack = true,
		close = true,
		description = ''
	},

	['turtlebait'] = {
		label = 'turtle bait',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['usb_prisonbreak'] = {
		label = 'Usb Prison',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['blackdiamond'] = {
		label = 'Black Diamond',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['jewel'] = {
		label = 'Jewel',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['thermite'] = {
		label = 'thermite',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['hackertablet'] = {
		label = 'Shop Hacking Tablet',
		weight = 100,
		stack = true,
		close = true,
		description = ''
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 100,
		stack = true,
		close = true,
		description = ''
	},

	['scissors'] = {
		label = 'scissors',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['ziptieremover'] = {
		label = 'ziptie remover',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['zipties'] = {
		label = 'zipties',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['meat'] = {
		label = 'Meat',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['leather'] = {
		label = 'Leather',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['plastic'] = {
		label = 'Plastik',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['watergalon'] = {
		label = 'Galon Water',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['galon'] = {
		label = 'Galon',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['wheelchair'] = {
		label = 'wheelchair',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['petrol'] = {
		label = 'Petrol',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['petrol_raffin'] = {
		label = 'Petrol Raffin',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['essence'] = {
		label = 'Gas',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['bagofcash'] = {
		label = 'bagofcash',
		weight = 5,
		stack = true,
		close = true,
		description = ''
	},

	['sorted_money'] = {
		label = 'sorted_money',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['meth'] = {
		label = 'Meth',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['methbag'] = {
		label = 'methbag',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['acetone'] = {
		label = 'acetone',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['amonia'] = {
		label = 'amonia',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['weedseed'] = {
		label = 'weedseed',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['weed'] = {
		label = 'Paket Gele',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['coke'] = {
		label = 'coke',
		weight = 100,
		stack = true,
		close = true,
		description = ''
	},

	['coke_pooch'] = {
		label = 'bag of coke',
		weight = 100,
		stack = true,
		close = true,
		description = ''
	},

	['meth_pooch'] = {
		label = 'bag of meth',
		weight = 100,
		stack = true,
		close = true,
		description = ''
	},

	['moonshine'] = {
		label = 'straight moonshine',
		weight = 100,
		stack = true,
		close = true,
		description = ''
	},

	['moonshine_pooch'] = {
		label = 'bottled moonshine',
		weight = 100,
		stack = true,
		close = true,
		description = ''
	},


	['kursiportable'] = {
		label = 'Kursi Portable',
		weight = 100,
		stack = true,
		close = true,
		description = ''
	},

	['backpack'] = {
		label = 'Backpack',
		weight = 220,
		stack = false,
		consume = 0,
		client = {
			export = 'ttyy_backpack.openBackpack'
		}
	},

	['walking_stick'] = {
		label = 'Tongkat Bantu ',
		weight = 220,
		stack = false,
		consume = 0,
	},


	['opium'] = {
		label = 'opium',
		weight = 100,
		stack = true,
		close = true,
		description = ''
	},

	['opium_pooch'] = {
		label = 'bag of opium',
		weight = 100,
		stack = true,
		close = true,
		description = ''
	},

	['weed_pooch'] = {
		label = 'bag of weed',
		weight = 100,
		stack = true,
		close = true,
		description = ''
	},

	['ammonia'] = {
		label = 'ammonia',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['coca'] = {
		label = 'unpackaged cocain',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['labcard'] = {
		label = 'lab card',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['packagedcoca'] = {
		label = 'packaged cocain',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['packagedmeth'] = {
		label = 'packaged meth',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['packagedweed'] = {
		label = 'packaged weed',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['sacid'] = {
		label = 'sodyum benzoat',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['blowtorch'] = {
		label = 'blowtorch',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['c4'] = {
		label = 'c4',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['alucisetas'] = {
		label = 'jamur halusinogen',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['bijigandum'] = {
		label = 'biji gandum',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['bijikelapa'] = {
		label = 'biji kelapa',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['bodycam'] = {
		label = 'bodycamtol',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['cannabis'] = {
		label = 'cannabis',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['chemicals'] = {
		label = 'chemicals',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['chemicalslisence'] = {
		label = 'chemicals license',
		weight = 0,
		stack = true,
		close = true,
		description = ''
	},

	['coca_leaf'] = {
		label = 'coca leaf',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['cutted_wood'] = {
		label = 'potongan kayu',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['gandum'] = {
		label = 'gandum',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['haribo'] = {
		label = 'permen haribo',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['heroin'] = {
		label = 'heroin',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['hydrochloric_acid'] = {
		label = 'hydrochloric acid',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['id_card_f'] = {
		label = 'malicious access card',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['kelapa'] = {
		label = 'buah kelapa',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['lsa'] = {
		label = 'lsa',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['lsd'] = {
		label = 'lsd',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['marijuana'] = {
		label = 'marijuana',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['moneywash'] = {
		label = 'moneywash license',
		weight = 0,
		stack = true,
		close = true,
		description = ''
	},

	['packaged_plank'] = {
		label = 'paket kayu',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['pesticid'] = {
		label = 'pestisida',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['poppyresin'] = {
		label = 'poppy resin',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['secure_card'] = {
		label = 'secure id card',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['setahas'] = {
		label = 'jamur',
		weight = 10,
		stack = true,
		close = true,
		description = ''
	},

	['sodium_hydroxide'] = {
		label = 'sodium hydroxide',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['stancerkit'] = {
		label = 'alat stancer',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['stone'] = {
		label = 'batu',
		weight = 1000,
		stack = true,
		close = true,
		description = ''
	},

	['sulfuric_acid'] = {
		label = 'sulfuric acid',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['boombox'] = {
		label = 'boombox',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['thionyl_chloride'] = {
		label = 'thionyl chloride',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['washed_stone'] = {
		label = 'batu cuci',
		weight = 1000,
		stack = true,
		close = true,
		description = ''
	},

	['thermal_charge'] = {
		label = 'thermal_charge',
		weight = 250,
		stack = true,
		close = true,
		description = ''
	},

	['weapon_patrolcan'] = {
		label = 'jerigen',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['weapon_pickaxe'] = {
		label = 'pickaxe',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['mleko'] = {
		label = 'Susu',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['kotaksusu'] = {
		label = 'Kotak Susu',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['heavyarmor'] = {
		label = 'Heavy Armor',
		weight = 800,
		stack = true,
		close = true,
		description = '',
	},
	['bibit_cabe'] = {
		label = 'bibit cabe',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['bibit_daunbawang'] = {
		label = 'bibit daun bawang',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['bibit_jeruk'] = {
		label = 'bibit jeruk',
		weight = 1,
		stack = true,
		close = true,
		description = '100'
	},

	['bibit_kentang'] = {
		label = 'bibit kentang',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['bibit_tebu'] = {
		label = 'bibit tebu',
		weight = 1,
		stack = true,
		close = true,
		description = '100'
	},

	['bibit_teh'] = {
		label = 'bibit teh',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},

	['bibit_tomat'] = {
		label = 'bibit tomat',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	
	['jeruk'] = {
		label = 'jeruk',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['cabe'] = {
		label = 'cabe',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['note'] = {
		label = 'Notes',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['tomat'] = {
		label = 'tomat',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['sususapi'] = {
		label = 'Susu Sapi',
		weight = 150,
		stack = true,
		consume = 0,
		description = 'Susu Sapi Segar ! bukan susu ... ',
	},

	['coconut'] = {
        label = 'Kelapa',
		description = '',
        weight = 150,
        stack = true,
        close = true,
    },

	['coral'] = {
        label = 'coral',
		description = '',
        weight = 150,
        stack = true,
        close = true,
    },

	['goldbar'] = {
        label = 'goldbar',
		description = '',
        weight = 150,
        stack = true,
        close = true,
    },

	['band'] = {
        label = 'band',
		description = '',
        weight = 150,
        stack = true,
        close = true,
    },

	['killerwhale'] = {
        label = 'killerwhale',
		description = '',
        weight = 150,
        stack = true,
        close = true,
    },

	['sharktiger'] = {
        label = 'sharktiger',
		description = '',
        weight = 150,
        stack = true,
        close = true,
    },

	['dolphin'] = {
        label = 'dolphin',
		description = '',
        weight = 150,
        stack = true,
        close = true,
    },


	['sharkhammer'] = {
        label = 'sharkhammer',
		description = '',
        weight = 150,
        stack = true,
        close = true,
    },

	['metalingot'] = {
        label = 'metalingot',
		description = '',
        weight = 150,
        stack = true,
        close = true,
    },


	['apel'] = {
		label = 'Buah apel',
		weight = 150,
		stack = true,
		consume = 0,
		description = 'Buah apel ini sangatlah lezat !',
	},

	['kentang'] = {
		label = 'kentang',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},
	['lettuce'] = {
        label = 'Selada',
		description = 'selada yang bagus, jual ke pemilik restaurant di kota untuk harga yg mahal/ jual ke toko buah',
        weight = 150,
        stack = true,
        close = true,
    },

	['strawberry'] = {
        label = 'Strawberry',
		description = 'strawberry yang bagus, jual ke pemilik restaurant di kota untuk harga yg mahal/ jual ke toko buah',
        weight = 500,
        stack = true,
        close = true,
    },

	['daun_bawang'] = {
		label = 'daun bawang',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['tebu'] = {
		label = 'tebu',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['scallot'] = {
		label = 'scallot',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},

	['teh'] = {
		label = 'teh',
		weight = 120,
		stack = true,
		close = true,
		description = ''
	},
	-- Bahan Pedagang --
	['beras'] = {
		label = 'Beras',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['daging'] = {
		label = 'Daging',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['kulit'] = {
		label = 'Kulit',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['tepung'] = {
		label = 'Tepung Terigu',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['minyak'] = {
		label = 'Minyak Goreng',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['kopi_bubuk'] = {
		label = 'Biji Kopi',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['gula'] = {
		label = 'Gula Batu',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['mie'] = {
		label = 'Mie Mentah',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['daunteh'] = {
		label = 'Daun Teh',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['sayuran'] = {
		label = 'Sayuran',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	-- Lainnya --
	['contract'] = {
		label = 'Kontrak Kendaraan',
		weight = 1,
		stack = true,
		close = true,
		description = '',
	},
	['tiketoplas'] = {
		label = 'Tiket Oplas',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['obat'] = {
		label = 'Obat Netralisir',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['bgaram'] = {
		label = 'Garam',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['paycheck'] = {
		label = 'Paycheck',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['laptop_h'] = {
		label = 'laptop_h',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['tabungoksigen'] = {
		label = 'Tabung Oksigen',
		weight = 1,
		stack = true,
		close = true,
		description = ''
	},
	['blood'] = { -- name must be the same as in server side
		label = 'Blood',
		weight = 40,
		stack = true,
		close = true,
	},
	['megaphone'] = {
		label = 'Megaphone',
		weight = 10,
		stack = true,
		close = true,
	},

	['uvlight'] = {
		label = 'uv flashlight',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['redwoods'] = {
        label = 'Redwoods',
        weight = 0,
        stack = false,
        close = true,
        description = 'Pack of Original Red Wood Killer Cigarettes',
        consume = 0,
        client = {
            status = { stress = -100000 },
            anim = { dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c', flag = 49 },
            prop = { model = 'prop_cs_ciggy_01', pos = { x = 0.00, y = 0.0, z = -0.00}, rot = { x = 0.0, y = 0.0, z = 0.0}, bone = 28422 },
            usetime = 15000,
            label = 'SMOKING A CIGARETTE . . .',
        },
        buttons = {
            {
                label = 'Remove Cigarette',
                action = function(slot)
                    TriggerServerEvent('gr8_stuff:item:removeCig', slot, {indent=true})
                end
            },
        }
    },

	['bagofdope'] = {
		label = 'bag of dope',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['dopebag'] = {
		label = 'ziplock bag',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['drugscales'] = {
		label = 'drug scales',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['highgradefemaleseed'] = {
		label = 'female dope seed+',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['highgradefert'] = {
		label = 'high-grade fertilizer',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['highgrademaleseed'] = {
		label = 'male dope seed+',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['lowgradefemaleseed'] = {
		label = 'female dope seed',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['lowgradefert'] = {
		label = 'low-grade fertilizer',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['lowgrademaleseed'] = {
		label = 'male dope seed',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['plantpot'] = {
		label = 'plant pot',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['purifiedwater'] = {
		label = 'purified water',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['trimmedweed'] = {
		label = 'trimmed weed',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['wateringcan'] = {
		label = 'watering can',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['cashroll'] = {
		label = 'cashroll',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},
	
	['laptop'] = {
		label = 'laptop',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['dia_box'] = {
		label = 'diamond box',
		weight = 2,
		stack = true,
		close = true,
		description = nil
	},

	['gold_bar'] = {
		label = 'gold bar',
		weight = 2,
		stack = true,
		close = true,
		description = nil
	},

	['id_card'] = {
		label = 'id card',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	
    ['weed_leaf'] = {
        label = 'Daun Gele',
        weight = 200,
        stack = true,
        close = false,
        server = {},
        client = {}
    },

    ['weed_dry'] = {
        label = 'Gele Kering',
        weight = 150,
        stack = true,
        close = false,
        server = {},
        client = {}
    },

    ['weed_pooch'] = {
        label = 'Paketan Gele',
        weight = 250,
        stack = true,
        close = false,
        server = {},
        client = {}
    },

    ['meth_powder'] = {
        label = 'Bubuk Meth',
        weight = 150,
        stack = true,
        close = false,
        server = {},
        client = {}
    },

    ['meth_liquid'] = {
        label = 'Meth', ---SEMENTARA ARTHUR GANTI
        weight = 200,
        stack = true,
        close = false,
        server = {},
        client = {}
    },

    ['meth_pooch'] = {
        label = 'Paketan Meth',
        weight = 250,
        stack = true,
        close = false,
        server = {},
        client = {}
    },

	['tablet'] = {
		label = 'tablet',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_adder'] = {
		label = 'adder engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_airbus'] = {
		label = 'airbus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_airtug'] = {
		label = 'airtug engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_akula'] = {
		label = 'akula engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_akuma'] = {
		label = 'akuma engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_alkonost'] = {
		label = 'alkonost engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_alpha'] = {
		label = 'alpha engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_alphaz1'] = {
		label = 'alphaz1 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ambulance'] = {
		label = 'ambulance engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_annihilator'] = {
		label = 'annihilator engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_annihilator2'] = {
		label = 'annihilator2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_apc'] = {
		label = 'apc engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ardent'] = {
		label = 'ardent engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_armytanker'] = {
		label = 'armytanker engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_armytrailer'] = {
		label = 'armytrailer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_armytrailer2'] = {
		label = 'armytrailer2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_asbo'] = {
		label = 'asbo engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_asea'] = {
		label = 'asea engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_asea2'] = {
		label = 'asea2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_asterope'] = {
		label = 'asterope engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_autarch'] = {
		label = 'autarch engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_avarus'] = {
		label = 'avarus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_avenger'] = {
		label = 'avenger engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_avenger2'] = {
		label = 'avenger2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_avisa'] = {
		label = 'avisa engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_b16b'] = {
		label = 'b16b engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bagger'] = {
		label = 'bagger engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_baletrailer'] = {
		label = 'baletrailer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_baller'] = {
		label = 'baller engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_baller2'] = {
		label = 'baller2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_baller3'] = {
		label = 'baller3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_baller4'] = {
		label = 'baller4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_baller5'] = {
		label = 'baller5 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_baller6'] = {
		label = 'baller6 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_banshee'] = {
		label = 'banshee engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_banshee2'] = {
		label = 'banshee2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_barracks'] = {
		label = 'barracks engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_barracks2'] = {
		label = 'barracks2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_barracks3'] = {
		label = 'barracks3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_barrage'] = {
		label = 'barrage engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bati'] = {
		label = 'bati engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bati2'] = {
		label = 'bati2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_benson'] = {
		label = 'benson engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_besra'] = {
		label = 'besra engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bestiagts'] = {
		label = 'bestiagts engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bf400'] = {
		label = 'bf400 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bfinjection'] = {
		label = 'bfinjection engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_biff'] = {
		label = 'biff engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bifta'] = {
		label = 'bifta engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bison'] = {
		label = 'bison engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bison2'] = {
		label = 'bison2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bison3'] = {
		label = 'bison3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bjxl'] = {
		label = 'bjxl engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_blade'] = {
		label = 'blade engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_blazer'] = {
		label = 'blazer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_blazer2'] = {
		label = 'blazer2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_blazer3'] = {
		label = 'blazer3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_blazer4'] = {
		label = 'blazer4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_blazer5'] = {
		label = 'blazer5 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_blimp'] = {
		label = 'blimp engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_blimp2'] = {
		label = 'blimp2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_blimp3'] = {
		label = 'blimp3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_blista'] = {
		label = 'blista engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_blista2'] = {
		label = 'blista2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_blista3'] = {
		label = 'blista3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bmx'] = {
		label = 'bmx engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_boattrailer'] = {
		label = 'boattrailer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bobcatxl'] = {
		label = 'bobcatxl engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bodhi2'] = {
		label = 'bodhi2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bombushka'] = {
		label = 'bombushka engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_boxville'] = {
		label = 'boxville engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_boxville2'] = {
		label = 'boxville2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_boxville3'] = {
		label = 'boxville3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_boxville4'] = {
		label = 'boxville4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_boxville5'] = {
		label = 'boxville5 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_brawler'] = {
		label = 'brawler engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_brickade'] = {
		label = 'brickade engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_brioso'] = {
		label = 'brioso engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_brioso2'] = {
		label = 'brioso2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bruiser'] = {
		label = 'bruiser engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bruiser2'] = {
		label = 'bruiser2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bruiser3'] = {
		label = 'bruiser3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_brutus'] = {
		label = 'brutus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_brutus2'] = {
		label = 'brutus2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_brutus3'] = {
		label = 'brutus3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_btype'] = {
		label = 'btype engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_btype2'] = {
		label = 'btype2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_btype3'] = {
		label = 'btype3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_buccaneer'] = {
		label = 'buccaneer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_buccaneer2'] = {
		label = 'buccaneer2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_buffalo'] = {
		label = 'buffalo engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_buffalo2'] = {
		label = 'buffalo2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_buffalo3'] = {
		label = 'buffalo3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bulldozer'] = {
		label = 'bulldozer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bullet'] = {
		label = 'bullet engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_burrito'] = {
		label = 'burrito engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_burrito2'] = {
		label = 'burrito2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_burrito3'] = {
		label = 'burrito3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_burrito4'] = {
		label = 'burrito4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_burrito5'] = {
		label = 'burrito5 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_bus'] = {
		label = 'bus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_buzzard'] = {
		label = 'buzzard engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_buzzard2'] = {
		label = 'buzzard2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cablecar'] = {
		label = 'cablecar engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_caddy'] = {
		label = 'caddy engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_caddy2'] = {
		label = 'caddy2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_caddy3'] = {
		label = 'caddy3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_calico'] = {
		label = 'calico engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_camper'] = {
		label = 'camper engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_caracara'] = {
		label = 'caracara engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_caracara2'] = {
		label = 'caracara2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_carbonizzare'] = {
		label = 'carbonizzare engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_carbonrs'] = {
		label = 'carbonrs engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cargobob'] = {
		label = 'cargobob engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cargobob2'] = {
		label = 'cargobob2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cargobob3'] = {
		label = 'cargobob3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cargobob4'] = {
		label = 'cargobob4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cargoplane'] = {
		label = 'cargoplane engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_casco'] = {
		label = 'casco engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cavalcade'] = {
		label = 'cavalcade engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cavalcade2'] = {
		label = 'cavalcade2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cerberus'] = {
		label = 'cerberus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cerberus2'] = {
		label = 'cerberus2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cerberus3'] = {
		label = 'cerberus3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cheburek'] = {
		label = 'cheburek engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cheetah'] = {
		label = 'cheetah engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cheetah2'] = {
		label = 'cheetah2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_chernobog'] = {
		label = 'chernobog engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_chimera'] = {
		label = 'chimera engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_chino'] = {
		label = 'chino engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_chino2'] = {
		label = 'chino2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cliffhanger'] = {
		label = 'cliffhanger engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_clique'] = {
		label = 'clique engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_club'] = {
		label = 'club engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_coach'] = {
		label = 'coach engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cog55'] = {
		label = 'cog55 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cog552'] = {
		label = 'cog552 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cogcabrio'] = {
		label = 'cogcabrio engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cognoscenti'] = {
		label = 'cognoscenti engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cognoscenti2'] = {
		label = 'cognoscenti2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_comet2'] = {
		label = 'comet2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_comet3'] = {
		label = 'comet3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_comet4'] = {
		label = 'comet4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_comet5'] = {
		label = 'comet5 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_comet6'] = {
		label = 'comet6 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_contender'] = {
		label = 'contender engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_coquette'] = {
		label = 'coquette engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_coquette2'] = {
		label = 'coquette2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_coquette3'] = {
		label = 'coquette3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_coquette4'] = {
		label = 'coquette4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cruiser'] = {
		label = 'cruiser engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_crusader'] = {
		label = 'crusader engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cuban800'] = {
		label = 'cuban800 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cutter'] = {
		label = 'cutter engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cyclone'] = {
		label = 'cyclone engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_cypher'] = {
		label = 'cypher engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_daemon'] = {
		label = 'daemon engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_daemon2'] = {
		label = 'daemon2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_deathbike'] = {
		label = 'deathbike engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_deathbike2'] = {
		label = 'deathbike2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_deathbike3'] = {
		label = 'deathbike3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_defiler'] = {
		label = 'defiler engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_deluxo'] = {
		label = 'deluxo engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_deveste'] = {
		label = 'deveste engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_deviant'] = {
		label = 'deviant engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_diablous'] = {
		label = 'diablous engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_diablous2'] = {
		label = 'diablous2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dilettante'] = {
		label = 'dilettante engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dilettante2'] = {
		label = 'dilettante2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dinghy'] = {
		label = 'dinghy engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dinghy2'] = {
		label = 'dinghy2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dinghy3'] = {
		label = 'dinghy3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dinghy4'] = {
		label = 'dinghy4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dinghy5'] = {
		label = 'dinghy5 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dloader'] = {
		label = 'dloader engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_docktrailer'] = {
		label = 'docktrailer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_docktug'] = {
		label = 'docktug engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dodo'] = {
		label = 'dodo engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dominator'] = {
		label = 'dominator engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dominator2'] = {
		label = 'dominator2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dominator3'] = {
		label = 'dominator3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dominator4'] = {
		label = 'dominator4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dominator5'] = {
		label = 'dominator5 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dominator6'] = {
		label = 'dominator6 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dominator7'] = {
		label = 'dominator7 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dominator8'] = {
		label = 'dominator8 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_double'] = {
		label = 'double engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_drafter'] = {
		label = 'drafter engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dubsta'] = {
		label = 'dubsta engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dubsta2'] = {
		label = 'dubsta2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dubsta3'] = {
		label = 'dubsta3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dukes'] = {
		label = 'dukes engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dukes2'] = {
		label = 'dukes2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dukes3'] = {
		label = 'dukes3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dump'] = {
		label = 'dump engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dune'] = {
		label = 'dune engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dune2'] = {
		label = 'dune2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dune3'] = {
		label = 'dune3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dune4'] = {
		label = 'dune4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dune5'] = {
		label = 'dune5 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_duster'] = {
		label = 'duster engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_dynasty'] = {
		label = 'dynasty engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_elegy'] = {
		label = 'elegy engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_elegy2'] = {
		label = 'elegy2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ellie'] = {
		label = 'ellie engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_emerus'] = {
		label = 'emerus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_emperor'] = {
		label = 'emperor engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_emperor2'] = {
		label = 'emperor2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_emperor3'] = {
		label = 'emperor3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_enduro'] = {
		label = 'enduro engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_entity2'] = {
		label = 'entity2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_entityxf'] = {
		label = 'entityxf engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_esskey'] = {
		label = 'esskey engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_euros'] = {
		label = 'euros engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_everon'] = {
		label = 'everon engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_exemplar'] = {
		label = 'exemplar engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_f620'] = {
		label = 'f620 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_faction'] = {
		label = 'faction engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_faction2'] = {
		label = 'faction2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_faction3'] = {
		label = 'faction3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_fagaloa'] = {
		label = 'fagaloa engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_faggio'] = {
		label = 'faggio engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_faggio2'] = {
		label = 'faggio2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_faggio3'] = {
		label = 'faggio3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_fbi'] = {
		label = 'fbi engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_fbi2'] = {
		label = 'fbi2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_fcr'] = {
		label = 'fcr engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_fcr2'] = {
		label = 'fcr2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_felon'] = {
		label = 'felon engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_felon2'] = {
		label = 'felon2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_feltzer2'] = {
		label = 'feltzer2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_feltzer3'] = {
		label = 'feltzer3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_firetruk'] = {
		label = 'firetruk engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_fixter'] = {
		label = 'fixter engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_flashgt'] = {
		label = 'flashgt engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_flatbed'] = {
		label = 'flatbed engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_fmj'] = {
		label = 'fmj engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_forklift'] = {
		label = 'forklift engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_formula'] = {
		label = 'formula engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_formula2'] = {
		label = 'formula2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_fq2'] = {
		label = 'fq2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_freecrawler'] = {
		label = 'freecrawler engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_freight'] = {
		label = 'freight engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_freightcar'] = {
		label = 'freightcar engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_freightcar2'] = {
		label = 'freightcar2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_freightcont1'] = {
		label = 'freightcont1 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_freightcont2'] = {
		label = 'freightcont2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_freightgrain'] = {
		label = 'freightgrain engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_freighttrailer'] = {
		label = 'freighttrailer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_frogger'] = {
		label = 'frogger engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_frogger2'] = {
		label = 'frogger2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_fugitive'] = {
		label = 'fugitive engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_furia'] = {
		label = 'furia engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_furoregt'] = {
		label = 'furoregt engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_fusilade'] = {
		label = 'fusilade engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_futo'] = {
		label = 'futo engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_futo2'] = {
		label = 'futo2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_gargoyle'] = {
		label = 'gargoyle engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_gauntlet'] = {
		label = 'gauntlet engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_gauntlet2'] = {
		label = 'gauntlet2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_gauntlet3'] = {
		label = 'gauntlet3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_gauntlet4'] = {
		label = 'gauntlet4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_gauntlet5'] = {
		label = 'gauntlet5 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_gb200'] = {
		label = 'gb200 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_gburrito'] = {
		label = 'gburrito engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_gburrito2'] = {
		label = 'gburrito2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_glendale'] = {
		label = 'glendale engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_glendale2'] = {
		label = 'glendale2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_gp1'] = {
		label = 'gp1 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_graintrailer'] = {
		label = 'graintrailer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_granger'] = {
		label = 'granger engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_gresley'] = {
		label = 'gresley engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_growler'] = {
		label = 'growler engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_gt500'] = {
		label = 'gt500 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_guardian'] = {
		label = 'guardian engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_habanero'] = {
		label = 'habanero engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_hakuchou'] = {
		label = 'hakuchou engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_hakuchou2'] = {
		label = 'hakuchou2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_halftrack'] = {
		label = 'halftrack engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_handler'] = {
		label = 'handler engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_hauler'] = {
		label = 'hauler engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_hauler2'] = {
		label = 'hauler2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_havok'] = {
		label = 'havok engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_hellion'] = {
		label = 'hellion engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_hermes'] = {
		label = 'hermes engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_hexer'] = {
		label = 'hexer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_hotknife'] = {
		label = 'hotknife engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_hotring'] = {
		label = 'hotring engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_howard'] = {
		label = 'howard engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_hunter'] = {
		label = 'hunter engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_huntley'] = {
		label = 'huntley engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_hustler'] = {
		label = 'hustler engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_hydra'] = {
		label = 'hydra engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_imorgon'] = {
		label = 'imorgon engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_impaler'] = {
		label = 'impaler engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_impaler2'] = {
		label = 'impaler2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_impaler3'] = {
		label = 'impaler3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_impaler4'] = {
		label = 'impaler4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_imperator'] = {
		label = 'imperator engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_imperator2'] = {
		label = 'imperator2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_imperator3'] = {
		label = 'imperator3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_infernus'] = {
		label = 'infernus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_infernus2'] = {
		label = 'infernus2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ingot'] = {
		label = 'ingot engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_innovation'] = {
		label = 'innovation engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_insurgent'] = {
		label = 'insurgent engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_insurgent2'] = {
		label = 'insurgent2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_insurgent3'] = {
		label = 'insurgent3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_intruder'] = {
		label = 'intruder engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_issi2'] = {
		label = 'issi2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_issi3'] = {
		label = 'issi3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_issi4'] = {
		label = 'issi4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_issi5'] = {
		label = 'issi5 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_issi6'] = {
		label = 'issi6 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_issi7'] = {
		label = 'issi7 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_italigtb'] = {
		label = 'italigtb engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_italigtb2'] = {
		label = 'italigtb2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_italigto'] = {
		label = 'italigto engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_italirsx'] = {
		label = 'italirsx engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_jackal'] = {
		label = 'jackal engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_jb700'] = {
		label = 'jb700 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_jb7002'] = {
		label = 'jb7002 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_jester'] = {
		label = 'jester engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_jester2'] = {
		label = 'jester2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_jester3'] = {
		label = 'jester3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_jester4'] = {
		label = 'jester4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_jet'] = {
		label = 'jet engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_jetmax'] = {
		label = 'jetmax engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_journey'] = {
		label = 'journey engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_jugular'] = {
		label = 'jugular engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_kalahari'] = {
		label = 'kalahari engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_kamacho'] = {
		label = 'kamacho engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_kanjo'] = {
		label = 'kanjo engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_khamelion'] = {
		label = 'khamelion engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_khanjali'] = {
		label = 'khanjali engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_komoda'] = {
		label = 'komoda engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_kosatka'] = {
		label = 'kosatka engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_krieger'] = {
		label = 'krieger engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_kuruma'] = {
		label = 'kuruma engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_kuruma2'] = {
		label = 'kuruma2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_landstalker'] = {
		label = 'landstalker engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_landstalker2'] = {
		label = 'landstalker2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_lazer'] = {
		label = 'lazer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_le7b'] = {
		label = 'le7b engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_lectro'] = {
		label = 'lectro engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_lguard'] = {
		label = 'lguard engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_limo2'] = {
		label = 'limo2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_locust'] = {
		label = 'locust engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_longfin'] = {
		label = 'longfin engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_lurcher'] = {
		label = 'lurcher engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_luxor'] = {
		label = 'luxor engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_luxor2'] = {
		label = 'luxor2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_lynx'] = {
		label = 'lynx engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_mamba'] = {
		label = 'mamba engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_mammatus'] = {
		label = 'mammatus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_manana'] = {
		label = 'manana engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_manana2'] = {
		label = 'manana2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_manchez'] = {
		label = 'manchez engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_manchez2'] = {
		label = 'manchez2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_marquis'] = {
		label = 'marquis engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_marshall'] = {
		label = 'marshall engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_massacro'] = {
		label = 'massacro engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_massacro2'] = {
		label = 'massacro2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_maverick'] = {
		label = 'maverick engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_menacer'] = {
		label = 'menacer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_mesa'] = {
		label = 'mesa engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_mesa2'] = {
		label = 'mesa2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_mesa3'] = {
		label = 'mesa3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_metrotrain'] = {
		label = 'metrotrain engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_michelli'] = {
		label = 'michelli engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_microlight'] = {
		label = 'microlight engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_miljet'] = {
		label = 'miljet engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_minitank'] = {
		label = 'minitank engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_minivan'] = {
		label = 'minivan engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_minivan2'] = {
		label = 'minivan2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_mixer'] = {
		label = 'mixer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_mixer2'] = {
		label = 'mixer2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_mogul'] = {
		label = 'mogul engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_molotok'] = {
		label = 'molotok engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_monroe'] = {
		label = 'monroe engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_monster'] = {
		label = 'monster engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_monster3'] = {
		label = 'monster3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_monster4'] = {
		label = 'monster4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_monster5'] = {
		label = 'monster5 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_moonbeam'] = {
		label = 'moonbeam engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_moonbeam2'] = {
		label = 'moonbeam2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_mower'] = {
		label = 'mower engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_mule'] = {
		label = 'mule engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_mule2'] = {
		label = 'mule2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_mule3'] = {
		label = 'mule3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_mule4'] = {
		label = 'mule4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_nebula'] = {
		label = 'nebula engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_nemesis'] = {
		label = 'nemesis engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_neo'] = {
		label = 'neo engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['campkit'] = {
		label = 'Camping Kit',
		weight = 1,
		stack = false,
		close = true,
		description = nil
	},


	['engine_neon'] = {
		label = 'neon engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_nero'] = {
		label = 'nero engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_nero2'] = {
		label = 'nero2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_nexus'] = {
		label = 'nexus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_nightblade'] = {
		label = 'nightblade engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_nightshade'] = {
		label = 'nightshade engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_nightshark'] = {
		label = 'nightshark engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_nimbus'] = {
		label = 'nimbus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ninef'] = {
		label = 'ninef engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ninef2'] = {
		label = 'ninef2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_nokota'] = {
		label = 'nokota engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_novak'] = {
		label = 'novak engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_omnis'] = {
		label = 'omnis engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_openwheel1'] = {
		label = 'openwheel1 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_openwheel2'] = {
		label = 'openwheel2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_oppressor'] = {
		label = 'oppressor engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_oppressor2'] = {
		label = 'oppressor2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_oracle'] = {
		label = 'oracle engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_oracle2'] = {
		label = 'oracle2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_osiris'] = {
		label = 'osiris engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_outlaw'] = {
		label = 'outlaw engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_packer'] = {
		label = 'packer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_panto'] = {
		label = 'panto engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},


	['bottle'] = {
		label = 'bottle',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_paradise'] = {
		label = 'paradise engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_paragon'] = {
		label = 'paragon engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_paragon2'] = {
		label = 'paragon2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_pariah'] = {
		label = 'pariah engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_patriot'] = {
		label = 'patriot engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_patriot2'] = {
		label = 'patriot2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_patrolboat'] = {
		label = 'patrolboat engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_pbus'] = {
		label = 'pbus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_pbus2'] = {
		label = 'pbus2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_pcj'] = {
		label = 'pcj engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_penetrator'] = {
		label = 'penetrator engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_penumbra'] = {
		label = 'penumbra engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_penumbra2'] = {
		label = 'penumbra2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_peyote'] = {
		label = 'peyote engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_peyote2'] = {
		label = 'peyote2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_peyote3'] = {
		label = 'peyote3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_pfister811'] = {
		label = 'pfister811 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_phantom'] = {
		label = 'phantom engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_phantom2'] = {
		label = 'phantom2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_phantom3'] = {
		label = 'phantom3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_phoenix'] = {
		label = 'phoenix engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_picador'] = {
		label = 'picador engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_pigalle'] = {
		label = 'pigalle engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_police'] = {
		label = 'police engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_police2'] = {
		label = 'police2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_police3'] = {
		label = 'police3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_police4'] = {
		label = 'police4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_policeb'] = {
		label = 'policeb engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_policeold1'] = {
		label = 'policeold1 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_policeold2'] = {
		label = 'policeold2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_policet'] = {
		label = 'policet engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_polmav'] = {
		label = 'polmav engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_pony'] = {
		label = 'pony engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_pony2'] = {
		label = 'pony2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_pounder'] = {
		label = 'pounder engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_pounder2'] = {
		label = 'pounder2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_prairie'] = {
		label = 'prairie engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_pranger'] = {
		label = 'pranger engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_predator'] = {
		label = 'predator engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_premier'] = {
		label = 'premier engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_previon'] = {
		label = 'previon engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_primo'] = {
		label = 'primo engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_primo2'] = {
		label = 'primo2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_proptrailer'] = {
		label = 'proptrailer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_prototipo'] = {
		label = 'prototipo engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_pyro'] = {
		label = 'pyro engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_radi'] = {
		label = 'radi engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_raiden'] = {
		label = 'raiden engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_raketrailer'] = {
		label = 'raketrailer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rallytruck'] = {
		label = 'rallytruck engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rancherxl'] = {
		label = 'rancherxl engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rancherxl2'] = {
		label = 'rancherxl2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rapidgt'] = {
		label = 'rapidgt engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rapidgt2'] = {
		label = 'rapidgt2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rapidgt3'] = {
		label = 'rapidgt3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_raptor'] = {
		label = 'raptor engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ratbike'] = {
		label = 'ratbike engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ratloader'] = {
		label = 'ratloader engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ratloader2'] = {
		label = 'ratloader2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rb26dett'] = {
		label = 'rb26dett engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rcbandito'] = {
		label = 'rcbandito engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_reaper'] = {
		label = 'reaper engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rebel'] = {
		label = 'rebel engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rebel2'] = {
		label = 'rebel2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rebla'] = {
		label = 'rebla engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_regina'] = {
		label = 'regina engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_remus'] = {
		label = 'remus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rentalbus'] = {
		label = 'rentalbus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_retinue'] = {
		label = 'retinue engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_retinue2'] = {
		label = 'retinue2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_revolter'] = {
		label = 'revolter engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rhapsody'] = {
		label = 'rhapsody engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rhino'] = {
		label = 'rhino engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_riata'] = {
		label = 'riata engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_riot'] = {
		label = 'riot engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_riot2'] = {
		label = 'riot2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ripley'] = {
		label = 'ripley engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rocoto'] = {
		label = 'rocoto engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rogue'] = {
		label = 'rogue engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_romero'] = {
		label = 'romero engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rrocket'] = {
		label = 'rrocket engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rt3000'] = {
		label = 'rt3000 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rubble'] = {
		label = 'rubble engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ruffian'] = {
		label = 'ruffian engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ruiner'] = {
		label = 'ruiner engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ruiner2'] = {
		label = 'ruiner2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ruiner3'] = {
		label = 'ruiner3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rumpo'] = {
		label = 'rumpo engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rumpo2'] = {
		label = 'rumpo2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rumpo3'] = {
		label = 'rumpo3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ruston'] = {
		label = 'ruston engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_rx713b'] = {
		label = 'rx713b engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_s80'] = {
		label = 's80 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sabregt'] = {
		label = 'sabregt engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sabregt2'] = {
		label = 'sabregt2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sadler'] = {
		label = 'sadler engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sadler2'] = {
		label = 'sadler2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sanchez'] = {
		label = 'sanchez engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sanchez2'] = {
		label = 'sanchez2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sanctus'] = {
		label = 'sanctus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sandking'] = {
		label = 'sandking engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sandking2'] = {
		label = 'sandking2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_savage'] = {
		label = 'savage engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_savestra'] = {
		label = 'savestra engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sc1'] = {
		label = 'sc1 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_scarab'] = {
		label = 'scarab engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_scarab2'] = {
		label = 'scarab2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_scarab3'] = {
		label = 'scarab3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_schafter2'] = {
		label = 'schafter2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_schafter3'] = {
		label = 'schafter3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_schafter4'] = {
		label = 'schafter4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_schafter5'] = {
		label = 'schafter5 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_schafter6'] = {
		label = 'schafter6 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_schlagen'] = {
		label = 'schlagen engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_schwarzer'] = {
		label = 'schwarzer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_scorcher'] = {
		label = 'scorcher engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_scramjet'] = {
		label = 'scramjet engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_scrap'] = {
		label = 'scrap engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_seabreeze'] = {
		label = 'seabreeze engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_seashark'] = {
		label = 'seashark engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_seashark2'] = {
		label = 'seashark2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_seashark3'] = {
		label = 'seashark3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_seasparrow'] = {
		label = 'seasparrow engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_seasparrow2'] = {
		label = 'seasparrow2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_seasparrow3'] = {
		label = 'seasparrow3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_seminole'] = {
		label = 'seminole engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_seminole2'] = {
		label = 'seminole2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sentinel'] = {
		label = 'sentinel engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sentinel2'] = {
		label = 'sentinel2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sentinel3'] = {
		label = 'sentinel3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_serrano'] = {
		label = 'serrano engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_seven70'] = {
		label = 'seven70 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_shamal'] = {
		label = 'shamal engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sheava'] = {
		label = 'sheava engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sheriff'] = {
		label = 'sheriff engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sheriff2'] = {
		label = 'sheriff2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_shotaro'] = {
		label = 'shotaro engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_skylift'] = {
		label = 'skylift engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_slamtruck'] = {
		label = 'slamtruck engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_slamvan'] = {
		label = 'slamvan engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_slamvan2'] = {
		label = 'slamvan2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_slamvan3'] = {
		label = 'slamvan3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_slamvan4'] = {
		label = 'slamvan4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_slamvan5'] = {
		label = 'slamvan5 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_slamvan6'] = {
		label = 'slamvan6 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sovereign'] = {
		label = 'sovereign engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_specter'] = {
		label = 'specter engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_specter2'] = {
		label = 'specter2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_speeder'] = {
		label = 'speeder engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_speeder2'] = {
		label = 'speeder2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_speedo'] = {
		label = 'speedo engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_speedo2'] = {
		label = 'speedo2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_speedo4'] = {
		label = 'speedo4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_squaddie'] = {
		label = 'squaddie engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_squalo'] = {
		label = 'squalo engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_stafford'] = {
		label = 'stafford engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_stalion'] = {
		label = 'stalion engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_stalion2'] = {
		label = 'stalion2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_stanier'] = {
		label = 'stanier engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_starling'] = {
		label = 'starling engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_stinger'] = {
		label = 'stinger engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_stingergt'] = {
		label = 'stingergt engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_stockade'] = {
		label = 'stockade engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_stockade3'] = {
		label = 'stockade3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_stratum'] = {
		label = 'stratum engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_streiter'] = {
		label = 'streiter engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_stretch'] = {
		label = 'stretch engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_strikeforce'] = {
		label = 'strikeforce engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_stromberg'] = {
		label = 'stromberg engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_stryder'] = {
		label = 'stryder engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_stunt'] = {
		label = 'stunt engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_submersible'] = {
		label = 'submersible engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_submersible2'] = {
		label = 'submersible2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sugoi'] = {
		label = 'sugoi engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sultan'] = {
		label = 'sultan engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sultan2'] = {
		label = 'sultan2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sultan3'] = {
		label = 'sultan3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_sultanrs'] = {
		label = 'sultanrs engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_suntrap'] = {
		label = 'suntrap engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_superd'] = {
		label = 'superd engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_supervolito'] = {
		label = 'supervolito engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_supervolito2'] = {
		label = 'supervolito2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_supra2jzgtett'] = {
		label = 'supra2jzgtett engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_surano'] = {
		label = 'surano engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_surfer'] = {
		label = 'surfer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_surfer2'] = {
		label = 'surfer2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_surge'] = {
		label = 'surge engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_swift'] = {
		label = 'swift engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_swift2'] = {
		label = 'swift2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_swinger'] = {
		label = 'swinger engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_t20'] = {
		label = 't20 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_taco'] = {
		label = 'taco engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tailgater'] = {
		label = 'tailgater engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tailgater2'] = {
		label = 'tailgater2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_taipan'] = {
		label = 'taipan engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tampa'] = {
		label = 'tampa engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tampa2'] = {
		label = 'tampa2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tampa3'] = {
		label = 'tampa3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tanker'] = {
		label = 'tanker engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tanker2'] = {
		label = 'tanker2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tankercar'] = {
		label = 'tankercar engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_taxi'] = {
		label = 'taxi engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_technical'] = {
		label = 'technical engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_technical2'] = {
		label = 'technical2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_technical3'] = {
		label = 'technical3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tempesta'] = {
		label = 'tempesta engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_terbyte'] = {
		label = 'terbyte engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tezeract'] = {
		label = 'tezeract engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_thrax'] = {
		label = 'thrax engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_thrust'] = {
		label = 'thrust engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_thruster'] = {
		label = 'thruster engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tigon'] = {
		label = 'tigon engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tiptruck'] = {
		label = 'tiptruck engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tiptruck2'] = {
		label = 'tiptruck2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_titan'] = {
		label = 'titan engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_toreador'] = {
		label = 'toreador engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_torero'] = {
		label = 'torero engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tornado'] = {
		label = 'tornado engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tornado2'] = {
		label = 'tornado2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tornado3'] = {
		label = 'tornado3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tornado4'] = {
		label = 'tornado4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tornado5'] = {
		label = 'tornado5 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tornado6'] = {
		label = 'tornado6 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_toro'] = {
		label = 'toro engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_toro2'] = {
		label = 'toro2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_toros'] = {
		label = 'toros engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tourbus'] = {
		label = 'tourbus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_towtruck'] = {
		label = 'towtruck engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_towtruck2'] = {
		label = 'towtruck2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tr2'] = {
		label = 'tr2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tr3'] = {
		label = 'tr3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tr4'] = {
		label = 'tr4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tractor'] = {
		label = 'tractor engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tractor2'] = {
		label = 'tractor2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tractor3'] = {
		label = 'tractor3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_trailerlarge'] = {
		label = 'trailerlarge engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_trailerlogs'] = {
		label = 'trailerlogs engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_trailers'] = {
		label = 'trailers engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_trailers2'] = {
		label = 'trailers2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_trailers3'] = {
		label = 'trailers3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_trailers4'] = {
		label = 'trailers4 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_trailersmall'] = {
		label = 'trailersmall engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_trailersmall2'] = {
		label = 'trailersmall2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_trash'] = {
		label = 'trash engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_trash2'] = {
		label = 'trash2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_trflat'] = {
		label = 'trflat engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tribike'] = {
		label = 'tribike engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tribike2'] = {
		label = 'tribike2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tribike3'] = {
		label = 'tribike3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_trophytruck'] = {
		label = 'trophytruck engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_trophytruck2'] = {
		label = 'trophytruck2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tropic'] = {
		label = 'tropic engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tropic2'] = {
		label = 'tropic2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tropos'] = {
		label = 'tropos engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tug'] = {
		label = 'tug engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tula'] = {
		label = 'tula engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tulip'] = {
		label = 'tulip engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_turismo2'] = {
		label = 'turismo2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_turismor'] = {
		label = 'turismor engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tvtrailer'] = {
		label = 'tvtrailer engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tyrant'] = {
		label = 'tyrant engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_tyrus'] = {
		label = 'tyrus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_utillitruck'] = {
		label = 'utillitruck engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_utillitruck2'] = {
		label = 'utillitruck2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_utillitruck3'] = {
		label = 'utillitruck3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_vacca'] = {
		label = 'vacca engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_vader'] = {
		label = 'vader engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_vagner'] = {
		label = 'vagner engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_vagrant'] = {
		label = 'vagrant engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_valkyrie'] = {
		label = 'valkyrie engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_valkyrie2'] = {
		label = 'valkyrie2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_vamos'] = {
		label = 'vamos engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_vectre'] = {
		label = 'vectre engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_velum'] = {
		label = 'velum engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_velum2'] = {
		label = 'velum2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_verlierer2'] = {
		label = 'verlierer2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_verus'] = {
		label = 'verus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_vestra'] = {
		label = 'vestra engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_vetir'] = {
		label = 'vetir engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_veto'] = {
		label = 'veto engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_veto2'] = {
		label = 'veto2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_vigero'] = {
		label = 'vigero engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_vigilante'] = {
		label = 'vigilante engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_vindicator'] = {
		label = 'vindicator engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_virgo'] = {
		label = 'virgo engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_virgo2'] = {
		label = 'virgo2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_virgo3'] = {
		label = 'virgo3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_viseris'] = {
		label = 'viseris engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_visione'] = {
		label = 'visione engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_volatol'] = {
		label = 'volatol engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_volatus'] = {
		label = 'volatus engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_voltic'] = {
		label = 'voltic engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_voltic2'] = {
		label = 'voltic2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_voodoo'] = {
		label = 'voodoo engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_voodoo2'] = {
		label = 'voodoo2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_vortex'] = {
		label = 'vortex engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_vstr'] = {
		label = 'vstr engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_warrener'] = {
		label = 'warrener engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_washington'] = {
		label = 'washington engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_wastelander'] = {
		label = 'wastelander engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_weevil'] = {
		label = 'weevil engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_windsor'] = {
		label = 'windsor engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_windsor2'] = {
		label = 'windsor2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_winky'] = {
		label = 'winky engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_wolfsbane'] = {
		label = 'wolfsbane engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_xa21'] = {
		label = 'xa21 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_xls'] = {
		label = 'xls engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_xls2'] = {
		label = 'xls2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_yosemite'] = {
		label = 'yosemite engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_yosemite2'] = {
		label = 'yosemite2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_yosemite3'] = {
		label = 'yosemite3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_youga'] = {
		label = 'youga engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_youga2'] = {
		label = 'youga2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_youga3'] = {
		label = 'youga3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_z190'] = {
		label = 'z190 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_zentorno'] = {
		label = 'zentorno engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_zhaba'] = {
		label = 'zhaba engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_zion'] = {
		label = 'zion engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_zion2'] = {
		label = 'zion2 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_zion3'] = {
		label = 'zion3 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_zombiea'] = {
		label = 'zombiea engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_zombieb'] = {
		label = 'zombieb engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_zorrusso'] = {
		label = 'zorrusso engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_zr350'] = {
		label = 'zr350 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_zr380'] = {
		label = 'zr380 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_zr3802'] = {
		label = 'zr3802 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_zr3803'] = {
		label = 'zr3803 engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['engine_ztype'] = {
		label = 'ztype engine',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},
}