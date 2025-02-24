data Part 
    = Part
        {
          part_name :: String
        }
    deriving (Eq)

data Vehicle
    = Car
        {
            vehicle_name :: String,
            vehicle_part :: Part,
            vehicle_length :: Float
        }
    deriving (Eq)