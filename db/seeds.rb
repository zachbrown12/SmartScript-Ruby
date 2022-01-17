# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Drug.destroy_all
Chemical.destroy_all
Variant.destroy_all
Effect.destroy_all
Prescription.destroy_all
Ingredient.destroy_all
UserVariant.destroy_all
UserRow.destroy_all

# User File
currentFile = File.read('./db/data/User.json')
currentData = JSON.parse(currentFile)
currentData.each do |ele|
    User.create(
        username: ele["Username"],        
        name: ele["Name"],
        file: ele["File"]
    )
end

#Drugs
currentFile = File.read('./db/data/Drug.json')
currentData = JSON.parse(currentFile)
currentData.each do |ele|
    Drug.create(
        name: ele["Name"],        
        use: ele["Use"],
        category: ele["Category"],
        image: ele["Image"],
        effect: ele["Effect"]
    )
end

#Chemicals
currentFile = File.read('./db/data/Chemical.json')
currentData = JSON.parse(currentFile)
currentData.each do |ele|
    Chemical.create(
        name: ele["Name"],        
        structure: ele["Structure"]
    )
end

#Variants
currentFile = File.read('./db/data/Variant.json')
currentData = JSON.parse(currentFile)
currentData.each do |ele|
    Variant.create(
        RSID: ele["RSID"],        
        chromosome: ele["Chromosome"],
        allele: ele["Allele"]
    )
end


#UserRows
# currentFile = File.read('./db/data/UserRow.json')
# currentData = JSON.parse(currentFile)
# currentData.each do |ele|
    # UserRow.create(
        # RSID: ele["RSID"],        
        # chromosome: ele["Chromosome"],
        # genotype: ele["GenoType"]
    # )
# end


#Prescriptions
currentFile = File.read('./db/data/Prescription.json')
currentData = JSON.parse(currentFile)
currentData.each do |ele|
    Prescription.create(
        user_id: ele["UserID"],        
        drug_id: ele["DrugID"]
    )
end


#Ingredients
currentFile = File.read('./db/data/Ingredient.json')
currentData = JSON.parse(currentFile)
currentData.each do |ele|
    Ingredient.create(
        drug_id: ele["DrugID"],        
        chemical_id: ele["ChemicalID"]
    )
end



#Effects
currentFile = File.read('./db/data/Effect.json')
currentData = JSON.parse(currentFile)
currentData.each do |ele|
    Effect.create(
        variant_id: ele["VariantID"],        
        chemical_id: ele["ChemicalID"],
        medical_effect: ele["Medical_Effect"],
        notes: ele["Notes"]
    )
end


#UserVariants
currentFile = File.read('./db/data/UserVariant.json')
currentData = JSON.parse(currentFile)
currentData.each do |ele|
    UserVariant.create(
        user_id: ele["UserID"],        
        variant_id: ele["VariantID"],
        user_row_id: ele["RowNum"]
    )
end


