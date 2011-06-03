#Sample Institutes for institute table
# 5 NITW students and 5 NITW faculty

#NITW student:1
Institute.create!( :name    =>"nitw",
                   :details =>"it is locat in a.p",
                   :user_id =>"501",  
                   :emblem  =>"heat",
                   :email   =>"chowdary_rakesh2003@yahoo.com") 


Institute.create!( :name    =>"nitd",
                   :details =>"it is locat in delhi",
                   :user_id =>"506",  
                   :emblem  =>"cold",
                   :email   =>"chowdary_sukesh2003@yahoo.com") 


Institute.create!( :name    =>"nitt",
                   :details =>"it is locat in tamilnadu",
                   :user_id =>"531",  
                   :emblem  =>"hot",
                   :email   =>"nit.thiruchi@yahoo.com")
 

User.create!(     :name=>"rakesh",
                   :username=>"rakesh",
                   :password=>"rakesh",
                   :user_type=>"admin",
                   :photo_url=>"bfdnifgj"   )

User.create!(     :name=>"sukesh",
                   :username=>"mp3",
                   :password=>"rakesh",
                   :user_type=>"student",
                   :photo_url=>"bfdnifgj"   )

User.create!(     :name=>"shashibushan",
                   :username=>"bycycle",
                   :password=>"rakesh",
                   :user_type=>"student",
                   :photo_url=>"bfdnifgj"   ) 

User.create!(     :name=>"beeshma",
                   :username=>"beeshma",
                   :password=>"rakesh",
                   :user_type=>"admin",
                   :photo_url=>"bfdnifgj"   )

User.create!(     :name=>"pavan",
                   :username=>"rakesh",
                   :password=>"rakesh",
                   :user_type=>"staff",
                   :photo_url=>"bfdnifgj"   )

User.create!(     :name=>"future",
                   :username=>"hari",
                   :password=>"rakesh",
                   :user-type=>"admin",
                   :photo-url=>"bfdnifgj"   )
