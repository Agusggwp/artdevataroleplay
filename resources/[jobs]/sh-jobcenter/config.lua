return {
    texts = {
        open = '[E] - Job Center',
        jobCenterTitle = 'Job Center',
        closeButton = '✖',
        applyButton = 'Sign Up',
        applicationSubmittedTitle = 'Application Submitted!',
        applicationSubmittedMessage = 'You have signed for the position of %s with a pay of %s.'
    },

    job_centers = {
        locations = {
            vector3(-267.43, -959.08, 31.22),
            -- vector3(-267.43, -959.08, 31.22),
            -- add more vectors
        },
        radius = 2.5,
    },

    jobs = {
        {
            name = 'reporter',
            label = 'Reporter',
            pay = '$150',
            description = [[<strong>Reporters</strong> gather and analyze information, conduct interviews, and write news stories. 
            Topics include politics, business, sports, and entertainment. Strong communication skills are essential.]],
            image = 'imgs/reporter.png',
            tags = {'Media', 'Communication', 'Writing'},
            recommended = true
        },
        {
            name = 'farmer',
            label = 'Farmer',
            pay = '$180',
            description = [[<strong>Farmers</strong> manage agricultural operations including crops and livestock. 
            Responsibilities include planting, cultivating, and harvesting. Knowledge of modern farming techniques is beneficial.]],
            image = 'imgs/farmer.png',
            tags = {'Agriculture', 'Livestock', 'Crops'},
            recommended = false
        },
        {
            name = 'garbage',
            label = 'Garbage Collector',
            pay = '$120',
            description = [[<strong>Garbage Collectors</strong> collect and dispose of waste materials. 
            Ensure timely and efficient waste collection. Physical fitness and attention to safety regulations are important.]],
            image = 'imgs/garbage.png',
            tags = {'Waste Management', 'Sanitation', 'Recycling'},
            recommended = false
        },
        {
            name = 'hunter',
            label = 'Hunter',
            pay = '$250',
            description = [[<strong>Hunters</strong> track and hunt wild animals for sport, food, and population control. 
            Knowledge of wildlife and tracking techniques is essential. Adherence to hunting regulations is crucial.]],
            image = 'imgs/hunting.png',
            tags = {'Wildlife', 'Tracking', 'Outdoors'},
            recommended = false
        },
        
        {
            name = 'fueler',
            label = 'TUKANG MINYAK',
            pay = '$190',
            description = [[<strong>Fuelers</strong> fill up vehicles with fuel and ensure proper handling of fueling equipment. 
            Maintain a safe and efficient fueling environment.]],
            image = 'imgs/fueler.png',
            tags = {'Transportation', 'Logistics', 'Delivery'},
            recommended = false
        },
      
    }
}