local registeredEmotes = {
    {
        {
            Name = "dontblockintersectionsign",
            Type = "PropEmotes",
            Animation = "base",
            Dictionary = "amb@world_human_janitor@male@base",
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = "prop_sign_road_03e",
                        Placement = {
                            vector3(0.100000, -1.000000, 0.000000),
                            vector3(-90.000000, -250.000000, 0.000000),
                        },
                    },
                },
            },
        },
        {
            Name = "leftturnsign",
            Type = "PropEmotes",
            Animation = "base",
            Dictionary = "amb@world_human_janitor@male@base",
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = "prop_sign_road_05e",
                        Placement = {
                            vector3(0.100000, -1.000000, 0.000000),
                            vector3(-90.000000, -250.000000, 0.000000),
                        },
                    },
                },
            },
        },
        {
            Name = "noparkingsign",
            Type = "PropEmotes",
            Animation = "base",
            Dictionary = "amb@world_human_janitor@male@base",
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = "prop_sign_road_04a",
                        Placement = {
                            vector3(0.100000, -1.000000, 0.000000),
                            vector3(-90.000000, -250.000000, 0.000000),
                        },
                    },
                },
            },
        },
        {
            Name = "notrespassingsign",
            Type = "PropEmotes",
            Animation = "base",
            Dictionary = "amb@world_human_janitor@male@base",
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = "prop_sign_road_restriction_10",
                        Placement = {
                            vector3(0.100000, -1.000000, 0.000000),
                            vector3(-90.000000, -250.000000, 0.000000),
                        },
                    },
                },
            },
        },
        {
            Name = "rightturnsign",
            Type = "PropEmotes",
            Animation = "base",
            Dictionary = "amb@world_human_janitor@male@base",
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = "prop_sign_road_05f",
                        Placement = {
                            vector3(0.100000, -1.000000, 0.000000),
                            vector3(-90.000000, -250.000000, 0.000000),
                        },
                    },
                },
            },
        },
        {
            Name = "stopsign",
            Type = "PropEmotes",
            Animation = "base",
            Dictionary = "amb@world_human_janitor@male@base",
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = "prop_sign_road_01a",
                        Placement = {
                            vector3(0.100000, -1.000000, 0.000000),
                            vector3(-90.000000, -250.000000, 0.000000),
                        },
                    },
                },
            },
        },
        {
            Name = "uturnsign",
            Type = "PropEmotes",
            Animation = "base",
            Dictionary = "amb@world_human_janitor@male@base",
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = "prop_sign_road_03m",
                        Placement = {
                            vector3(0.100000, -1.000000, 0.000000),
                            vector3(-90.000000, -250.000000, 0.000000),
                        },
                    },
                },
            },
        },
        {
            Name = "walkingmansign",
            Type = "PropEmotes",
            Animation = "base",
            Dictionary = "amb@world_human_janitor@male@base",
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = "prop_sign_road_05a",
                        Placement = {
                            vector3(0.100000, -1.000000, 0.000000),
                            vector3(-90.000000, -250.000000, 0.000000),
                        },
                    },
                },
            },
        },
        {
            Name = "yieldsign",
            Type = "PropEmotes",
            Animation = "base",
            Dictionary = "amb@world_human_janitor@male@base",
            Options = {
                Flags = {
                    Loop = true,
                    Move = true,
                },
                Props = {
                    {
                        Bone = 57005,
                        Name = "prop_sign_road_02a",
                        Placement = {
                            vector3(0.100000, -1.000000, 0.000000),
                            vector3(-90.000000, -250.000000, 0.000000),
                        },
                    },
                },
            },
        },
    }
}

if Config.DpEmotesV3 then
    for i = 1, #registeredEmotes do
        exports.dpemotes:RegisterEmote(registeredEmotes[i])
    end 
end
