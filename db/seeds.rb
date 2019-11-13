# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



def User.digest(string)
  cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                BCrypt::Engine.cost
  BCrypt::Password.create(string, cost: cost)
end

#User data
fittedThreads = User.find_or_create_by(name: "FittedThreads", username: "FittedThreads", email: "fittedthreads@gmail.com", password_digest: "#{User.digest("admin")}", avatar: "https://fontmeme.com/permalink/191107/fd5f08ea70ae767e2e466900b2be0967.png")
rob = User.find_or_create_by(name: "Rob", username: "robocop", email: "rob@gmail.com", password_digest: "#{User.digest("1234")}", avatar: "http://placeimg.com/300/301/people")
jc = User.find_or_create_by(name: "JC", username: "jCheezy", email: "jc@gmail.com", password_digest: "#{User.digest("1234")}", avatar: "http://placeimg.com/300/302/people")
cal = User.find_or_create_by(name: "Cal", username: "calZone", email: "cal@gmail.com", password_digest: "#{User.digest("1234")}", avatar: "http://placeimg.com/300/303/people")
sang = User.find_or_create_by(name: "Sang", username: "sangryBird", email: "sang@gmail.com", password_digest: "#{User.digest("1234")}", avatar: "http://placeimg.com/300/304/people")

#Clothing data
denim_jacket = Clothing.find_or_create_by(name: "Faded Denim Jacket", brand: "Levi's", description: "Stonewashed broken in Denim Jacket for the casual Sunday chill", image_url: "https://images.unsplash.com/photo-1523205565295-f8e91625443b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1601&q=80", user: fittedThreads)
black_blazer = Clothing.find_or_create_by(name: "Black Blazer", brand: "Banana Republic", description: "Finely stitched black blazer with elbow pads for distinction", image_url: "https://images.unsplash.com/photo-1535891169584-75bcaf12e964?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80", user: fittedThreads)
red_checkered_coat = Clothing.find_or_create_by(name: "Red Checkered Coat", brand: "Lord & Taylor", description: "Wool checkered coat to make a color statement", image_url: "https://images.pexels.com/photos/2686035/pexels-photo-2686035.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", user: fittedThreads)
micro_gingham_shirt = Clothing.find_or_create_by(name: "Micro gingham-check patchwork shirt", brand: "Faconnable", description: "Add a touch of distinction to your looks with an original shirt like this one. The piece features a patchwork design combining micro-gingham panels with plain end-on-end fabric panels.", image_url: "https://d1c9kr4zc9k7ht.cloudfront.net/media/catalog/product/cache/3/image/1800x/040ec09b1e35df139433887a97daa66f/f/m/fm310215_561_051.jpg", user: fittedThreads)
black_shirt = Clothing.find_or_create_by(name: "Black Crew T-Shirt", brand: "VC", description: "For the rugged, wild, and free. Or been smoking 8 years but can still hold his breath for 2 minutes type of guy", image_url: "https://images.pexels.com/photos/1703083/pexels-photo-1703083.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260", user: fittedThreads)

charcoal_wool_pants = Clothing.find_or_create_by(name: "Charcoal Gray Plaid Wool Pants", brand: "Banana Republic", description: "Richly textured wool defines handsome dress pants crafted in a clean flat-front cut.", image_url: "https://images.pexels.com/photos/2897521/pexels-photo-2897521.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260", user: fittedThreads)
torn_black_jeans = Clothing.find_or_create_by(name: "Black Torn Jeans", brand: "H&M", description: "Inspired by jeans worn by Iggy on the cover of his 1977 album 'The Idiot,' this ripped-knee pair will have you ready to rock in a skinny, tapered fit.", image_url: "https://images.unsplash.com/photo-1536239859382-526c10b32153?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=695&q=80", user: fittedThreads)
fitted_khaki_jeans = Clothing.find_or_create_by(name: "Khaki Slim Fit Jeans", brand: "Eddie Bauer", description: "With just-right room in the thighs and a classic mid rise, these slim straight-leg jeans won't constrict or compromise your modern style.", image_url: "https://images.unsplash.com/photo-1473966968600-fa801b869a1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80", user: fittedThreads)
straight_blue_jeans = Clothing.find_or_create_by(name: "Straight Leg Jeans", brand: "7 For All Mankind", description: "A pristine indigo wash brings a blank canvas to straight-leg jeans cut from stretch denim with a look that will age with you on your terms.", image_url: "https://images.unsplash.com/photo-1460639763825-d45267e63cd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80", user: fittedThreads)
slim_dress_pants = Clothing.find_or_create_by(name: "Stretch Weekday Warrior Slim Fit Dress Pants", brand: "Bonobos", description: "A sharp look for any day of the week, these flat-front pants are made from soft, easy-care stretch cotton and cut for a trim (but not tight) fit.", image_url: "https://n.nordstrommedia.com/id/sr3/bc7a5dee-f018-4d0e-8acf-4b1fa53339bd.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=1660&h=2546", user: rob)

#size
small_for_denim = Size.create(size: "Small", clothing: denim_jacket)
med_for_denim = Size.create(size: "Medium", clothing: denim_jacket)
large_for_denim = Size.create(size: "Large", clothing: denim_jacket)
xlarge_for_denim = Size.create(size: "X-Large", clothing: denim_jacket)
wool_pants30 = Size.create(size: "30", clothing: charcoal_wool_pants)
wool_pants32 = Size.create(size: "32", clothing: charcoal_wool_pants)
wool_pants34 = Size.create(size: "34", clothing: charcoal_wool_pants)
wool_pants36 = Size.create(size: "36", clothing: charcoal_wool_pants)
slim_dresspants30 = Size.create(size: "30", clothing: slim_dress_pants)
slim_dresspants32 = Size.create(size: "32", clothing: slim_dress_pants)
slim_dresspants34 = Size.create(size: "34", clothing: slim_dress_pants)
slim_dresspants36 = Size.create(size: "36", clothing: slim_dress_pants)

#user_clothings
denim_measurement1 = UserClothing.find_or_create_by(user: rob, clothing: denim_jacket, size: small_for_denim, topNeck: 14, topChest: 15, topWaist: 16)
denim_measurement5 = UserClothing.find_or_create_by(user: sang, clothing: denim_jacket, size: small_for_denim, topNeck: 14, topChest: 14, topWaist: 15)
denim_measurement2 = UserClothing.find_or_create_by(user: rob, clothing: denim_jacket, size: med_for_denim, topNeck: 15, topChest: 16, topSleeve: 16)
denim_measurement3 = UserClothing.find_or_create_by(user: rob, clothing: denim_jacket, size: large_for_denim, topNeck: 16, topChest: 17, topFront_Length: 18)
denim_measurement4 = UserClothing.find_or_create_by(user: rob, clothing: denim_jacket, size: xlarge_for_denim, topNeck: 17, topChest: 18, topFront_Length: 18, topWaist: 38, topSleeve: 30)
wool_measurement1 = UserClothing.find_or_create_by(user: rob, clothing: charcoal_wool_pants, size: wool_pants30, bottomWaist: 30, bottomLength: 30, bottomHip: 30, bottomThigh: 30, bottomBottom_Hem: 30)
wool_measurement2 = UserClothing.find_or_create_by(user: cal, clothing: charcoal_wool_pants, size: wool_pants32, bottomWaist: 32, bottomLength: 32, bottomHip: 32, bottomThigh: 32, bottomBottom_Hem: 32)
wool_measurement3 = UserClothing.find_or_create_by(user: rob, clothing: charcoal_wool_pants, size: wool_pants34, bottomWaist: 34, bottomLength: 34, bottomHip: 34)
wool_measurement4 = UserClothing.find_or_create_by(user: cal, clothing: charcoal_wool_pants, size: wool_pants36, bottomWaist: 36, bottomLength: 36, bottomThigh: 36)
slim_dress_meas1 = UserClothing.find_or_create_by(user: sang, clothing: slim_dress_pants, size: slim_dresspants30, bottomWaist: 28, bottomLength: 30, bottomThigh: 28)
slim_dress_meas2 = UserClothing.find_or_create_by(user: sang, clothing: slim_dress_pants, size: slim_dresspants36, bottomWaist: 34, bottomLength: 34, bottomThigh: 33)
slim_dress_meas3 = UserClothing.find_or_create_by(user: jc, clothing: slim_dress_pants, size: slim_dresspants34, bottomWaist: 32, bottomLength: 34)

#categories
jacket = Category.create(name: "jacket")
blazer = Category.create(name: "blazer")
shirt = Category.create(name: "shirt")
jeans = Category.create(name: "jeans")
pants = Category.create(name: "pants")

#clothing categories
category_assign1 = ClothingCategory.create(category: jacket, clothing: denim_jacket)
category_assign2 = ClothingCategory.create(category: blazer, clothing: black_blazer)
category_assign3 = ClothingCategory.create(category: jacket, clothing: red_checkered_coat)
category_assign4 = ClothingCategory.create(category: shirt, clothing: micro_gingham_shirt)
category_assign5 = ClothingCategory.create(category: shirt, clothing: black_shirt)
category_assign6 = ClothingCategory.create(category: pants, clothing: charcoal_wool_pants)
category_assign7 = ClothingCategory.create(category: jeans, clothing: torn_black_jeans)
category_assign8 = ClothingCategory.create(category: jeans, clothing: fitted_khaki_jeans)
category_assign9 = ClothingCategory.create(category: jeans, clothing: straight_blue_jeans)
category_assign10 = ClothingCategory.create(category: pants, clothing: slim_dress_pants)
