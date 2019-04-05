def pet_shop_name(hash)
  return hash[:name]
end

def total_cash(hash)
  return hash[:admin][:total_cash]
end

def add_or_remove_cash(hash, amount)
  hash[:admin][:total_cash] += amount
end

def pets_sold(hash)
  return hash[:admin][:pets_sold]
end

def increase_pets_sold(hash, amount)
  hash[:admin][:pets_sold] += amount
end

def stock_count(hash)
  return hash[:pets].length
end

def pets_by_breed(hash, breed)
  list_of_pets = []
  for pet in hash[:pets]
    if pet[:breed] == breed
      list_of_pets.push(pet[:name])
    end
  end
  return list_of_pets
end

def find_pet_by_name(hash, name)
  for pet in hash[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(hash, pet_name)
  for pet in hash[:pets]
    if pet[:name] == pet_name
      hash[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(hash, new_pet_hash)
  hash[:pets].push(new_pet_hash)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet_hash)
  customer[:pets].push(new_pet_hash)
end

# OPTIONAL

def customer_can_afford_pet(customer, new_pet_hash)
  new_pet_hash[:price] < customer[:cash]
end
