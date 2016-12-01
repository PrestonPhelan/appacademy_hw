# app/models/driver.rb
class Driver
  belongs_to(
    :bus,
    class_name: "Bus",
    foreign_key: :bus_id,
    primary_key: :id
  )
end


# app/models/bus.rb
class Bus
  belongs_to(
    :route,
    class_name: "Route",
    foreign_key: :route_id,
    primary_key: :id,
  )

  has_many(
    :drivers,
    class_name: "Driver",
    foreign_key: :bus_id,
    primary_key: :id,
  )
end


# app/models/route.rb
class Route
  has_many(
    :buses,
    class_name: "Bus",
    foreign_key: :route_id,
    primary_key: :id
  )

  def n_plus_one_drivers
    buses = self.buses

    all_drivers = {}
    buses.each do |bus|
      drivers = []
      bus.drivers.each do |driver|
        drivers << driver.name
      end
      all_drivers[bus.id] = drivers
    end

    all_drivers
  end

  def better_drivers_query
    driver_assignments = Bus.join(:drivers).select("bus.id, drivers.name")
    bus_ids = Bus.select(:id).values

    driver_lists = Hash.new { Array.new }

    driver_assignments.each do |result_hash|
      id = nil
      driver = nil
      result_hash.each do |k, v|
        if k == :id
          id = v
        else
          driver = v
        end
      end

      driver_lists[id] << driver
  end
end
