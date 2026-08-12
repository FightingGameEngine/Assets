[Command]                       
name = "QCF2_x"                 
command = ~D, DF, F, a          
time = 20
[Command]                       
name = "YOG_b"                  
command = D, DF, F, c           
[Command]                       
name = "QCBF_b"                 
command = ~D, DF, F, b          
[Command]                       
name = "USSJ_Z"                 
command = /z                    
time = 1
[Command]                       
name = "USSJ_C"                 
command = /c                    
time = 1
[Command]                       
name = "Speed_Z"                
command = /z                    
time = 1
[Command]                       
name = "Speed_C"                
command = /c                    
time = 1
[Command]                       
name = "Meteor Smash"           
command = ~D, DB, B, a          
time = 20
[Command]                       
name = "Hyper Dash"             
command = ~D, DB, B, b          
time = 20
[Command]                       
name = "Ultimate"               
command = ~D, DB, B, c          
[Command]
name = "Renzoku Energy Dan"
command = ~D, DF, F, D, DF, F, z
time = 25
[Command]                       
name = "SON_bx"                 
command = ~B, F, z              
[Command]                       
name = "MGS_EX"                 
command = ~B, F, c              
[Command]                       
name = "Bakuhatsu Ha EX"        
command = ~D, DF, F, D, DF, F, y
time = 25
[Command]                       
name = "Shogekiha"              
command = ~D, DB, B, D, DB, B, z
time = 25
[Command]                       
name = "Seeker Blast"           
command = ~D, DF, F, D, DF, F, x
time = 25
[Command]                       
name = "Earthquake"             
command = ~D, DB, B, D, DB, B, y
time = 25
                  
[Command]                       
name = "High Jump"              
command = ~D, U                 
[Command]                       
name = "High Jump"              
command = ~D, UF                
[Command]                       
name = "High Jump"              
command = ~D, UB                
[Command]                       
name = "FBF_a"                  
command = ~B, F, b              
[Command]                       
name = "FBF_b"                  
command = ~D, DB, B, z          
[Command]                       
name = "DU_b"                   
command = ~D, DF, F, y          
[Command]                       
name = "Smasher"                
command = ~B, F, x              
[Command]                       
name = "SON_x"                  
command = ~B, F, y              
[Command]                       
name = "Kikou Ha"               
command = ~D, DF, F, x          
[Command]                       
name = "QCB_b"                  
command = ~D, DF, F, z          
[Command]                       
name = "Hell's Smash"           
command = ~B, F, a              
[Command]                       
name = "Bukuu Jutsu"            
command = x+y                   
[Command]                       
name = "Instantaneous Movement" 
command = y+z                   
time = 1
[Command]                       
name = "Instantaneous Movement" 
command = x+z                   
time = 1
[Command]                       
name = "Instantaneous Movement" 
command = ~D, DB, B, x          
[Command]                       
name = "Smash Down"             
command = ~D, DB, B, y          
[Command]                       
name = "FF"                     
command = F, F                  
time = 15
[Command]                       
name = "BB"                     
command = B, B                  
time = 15
[Command]                       
name = "UU"                     
command = U, U                  
time = 15
[Command]                       
name = "DD"                     
command = D, D                  
time = 15
[Command]                       
name = "recovery"               
command = x+y                   
time = 1
[Command]                       
name = "recovery"               
command = y+z                   
time = 1
[Command]                       
name = "recovery"               
command = x+z                   
time = 1
[Command]                       
name = "ax"                     
command = a+b                   
time = 1         
[Command]                       
name = "holda"                  
command = /a                    
time = 1
[Command]                       
name = "holdx"                  
command = /x                    
time = 1
[Command]                       
name = "holdb"                  
command = /b                    
time = 1   
[Command]                       
name = "holdy"                  
command = /y                    
time = 1   
[Command]                       
name = "fwd_x"                  
command = /F, x                 
time = 1
[Command]                       
name = "fwd_x"                  
command = /F, y                 
time = 1
[Command]                       
name = "fwd_x"                  
command = /F, z                 
time = 1
[Command]                       
name = "a"                      
command = a                     
time = 1
[Command]                       
name = "b"                      
command = b                     :N/A
time = 1
[Command]                       
name = "c"                      
command = c                     
time = 1
[Command]                       
name = "x"                      
command = x                     
time = 1
[Command]                       
name = "y"                      
command = y                     
time = 1
[Command]                       
name = "z"                      
command = z                     
time = 1
[Command]                       
name = "holdfwd"                
command = /$F                   
time = 1
[Command]                       
name = "holdback"               
command = /$B                   
time = 1
[Command]                       
name = "holdup"                 
command = /$U                   
time = 1
[Command]                       
name = "holddown"               
command = /$D                   
time = 1
[Command]                       
name = "holdz"                  
command = /z                    
time = 1
[Command]                       
name = "holdc"                  
command = /c                    
time = 1

[Statedef -1]
[State -1]
type = ChangeState
value = 3000
triggerall = PalNo = [1, 6]
triggerall = command = "QCF2_x"
triggerall = power >= 1000
triggerall = stateno != 3010
triggerall = stateno != 3020
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno >= 150        
trigger3 = stateno <= 153        
trigger4 = stateno = 5120       
trigger5 = stateno = 2000
trigger6 = movecontact
trigger6 = stateno = 1020
[State -1]
type = ChangeState
value = 3000
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 50
triggerall = P2BodyDist Y < -40 && P2BodyDist Y >= -50
triggerall = command = "QCF2_x"
triggerall = power >= 1000
triggerall = stateno != 3010
triggerall = stateno != 3020
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno >= 150        
trigger3 = stateno <= 153        
trigger4 = stateno = 5120       
trigger5 = stateno = 2000
trigger6 = movecontact
trigger6 = stateno = 1020
[State -1]
type = ChangeState
value = 3010
triggerall = power >= 1000
triggerall = command = "YOG_b"
triggerall = stateno != 3010
triggerall = stateno != 3020
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 5120       
trigger4 = stateno = 2000
trigger5 = movecontact
trigger5 = stateno = 1020
trigger6 = movecontact
trigger6 = stateno = 3000
trigger7 = stateno >= 150        
trigger7 = stateno <= 153        
Throwing Blaster
[State -1]
type = ChangeState
value = 3020
triggerall = power >= 1000
triggerall = stateno != 3010
triggerall = stateno != 3020
triggerall = command = "QCBF_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 5120       
trigger4 = stateno = 2000
trigger5 = movecontact
trigger5 = stateno = 1020
trigger6 = movecontact
trigger6 = stateno = 3000
trigger7 = stateno >= 150       
trigger7 = stateno <= 153       
[State -1]
type = ChangeState
value = 3030
triggerall = power >= 3000
triggerall = command = "USSJ_Z"
triggerall = command = "USSJ_C"
triggerall = Var(5) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
[State -1]
type = null
value = 4010
triggerall = power >= 2000
triggerall = command = "Speed_Z"
triggerall = command = "Speed_C"
triggerall = Var(5) != 0
triggerall = Var(9) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
[State -1]
type = ChangeState
value = 3040
triggerall = PalNo = [1, 6]
triggerall = command = "Meteor Smash"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 2000
trigger4 = stateno >= 150       
trigger4 = stateno <= 153       
[State -1]
type = ChangeState
value = 3040
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 60
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -70
triggerall = command = "Meteor Smash"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 2000
trigger4 = stateno >= 150       
trigger4 = stateno <= 153       
[State -1]
type = ChangeState
value = 3050
triggerall = command = "Hyper Dash"
triggerall = Power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 2000
trigger4 = stateno >= 150       
trigger4 = stateno <= 153       
[State -1]
type = ChangeState
value = 3060
triggerall = command = "Ultimate"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 2000
trigger4 = stateno = [150, 153] 
[State -1]
type = ChangeState
value = 4000
triggerall = command = "Renzoku Energy Dan"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
[State -1]
type = ChangeState
value = 1011
triggerall = PalNo = [1, 6]
triggerall = command = "SON_bx"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno >= 150        
trigger3 = stateno <= 153        
[State -1]
type = ChangeState
value = 1011
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 60
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -70
triggerall = command = "SON_bx"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno >= 150        
trigger3 = stateno <= 153        
[State -1]
type = ChangeState
value = 1011
triggerall = command = "SON_bx"
triggerall = movecontact
triggerall = power >= 500
trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 1020
trigger9 = time >= 50
[State -1]
type = ChangeState
value = 1021
triggerall = PalNo = [1, 6]
triggerall = command = "MGS_EX"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno >= 150        
trigger3 = stateno <= 153        
[State -1]
type = ChangeState
value = 1021
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 75
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -70
triggerall = command = "MGS_EX"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno >= 150        
trigger3 = stateno <= 153        
[State -1]
type = ChangeState
value = 1021
triggerall = command = "MGS_EX"
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
[State -1]
type = ChangeState
value = 1071
triggerall = PalNo = [1, 6]
triggerall = command = "Bakuhatsu Ha EX"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 40          
trigger3 = stateno = 2000
trigger4 = stateno >= 150        
trigger4 = stateno <= 153        
[State -1]
type = ChangeState
value = 1071
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 120
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -70
triggerall = command = "Bakuhatsu Ha EX"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 40          
trigger3 = stateno = 2000
trigger4 = stateno >= 150        
trigger4 = stateno <= 153        
[State -1]
type = ChangeState
value = 1071
triggerall = command = "Bakuhatsu Ha EX"
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 1010
trigger10 = stateno = 1020
trigger11 = stateno = 3000
[State -1]
type = ChangeState
value = 2005
triggerall = command = "Seeker Blast"
triggerall = NumHelper = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
[State -1]
type = ChangeState
value = 2012
triggerall = command = "Shogekiha"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1070
trigger2 = Time  >= 15
trigger2 = Power > 0
trigger3 = stateno = 2000
trigger4 = stateno >= 150        
trigger4 = stateno <= 153        
[State -1]
type = ChangeState
value = 2015
triggerall = command = "Earthquake"
triggerall = Pos Y >= 0
triggerall = power >= 500
trigger1 = ctrl = 1
trigger2 = stateno >= 150        
trigger2 = stateno <= 153        
[State -1]
type = ChangeState
value = 2015
triggerall = command = "Earthquake"
triggerall = power >= 500
triggerall = Var(3) = 0
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 1010
trigger10 = stateno = 1020
trigger11 = stateno = 3000
[State -1]
type = ChangeState
value = 1000
triggerall = PalNo = [1, 6]
triggerall = command = "Smasher"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno >= 150        
trigger2 = stateno <= 153        
trigger3 = stateno = 2000
[State -1]
type = ChangeState
value = 1000
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 60
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -70
triggerall = command = "Smasher"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno >= 150        
trigger2 = stateno <= 153        
[State -1]
type = ChangeState
value = 1010
triggerall = PalNo = [1, 6]
triggerall = command = "SON_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno >= 150        
trigger3 = stateno <= 153        
[State -1]
type = ChangeState
value = 1010
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 60
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -70
triggerall = command = "SON_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno >= 150        
trigger3 = stateno <= 153        
[State -1]
type = ChangeState
value = 1010
triggerall = command = "SON_x"
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 1020
trigger9 = time >= 50
[State -1]
type = ChangeState
value = 1020
triggerall = PalNo = [1, 6]
triggerall = command = "FBF_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno >= 150        
trigger3 = stateno <= 153        
[State -1]
type = ChangeState
value = 1020
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 75
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -70
triggerall = command = "FBF_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno >= 150        
trigger3 = stateno <= 153        
[State -1]
type = ChangeState
value = 1020
triggerall = command = "FBF_a"
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
[State -1]
type = ChangeState
value = 1070
triggerall = PalNo = [1, 6]
triggerall = command = "DU_b"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 40          
trigger3 = stateno = 2000
trigger4 = stateno >= 150        
trigger4 = stateno <= 153        
[State -1]
type = ChangeState
value = 1070
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 100
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -70
triggerall = command = "DU_b"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 40          
trigger3 = stateno = 2000
trigger4 = stateno >= 150        
trigger4 = stateno <= 153        
[State -1]
type = ChangeState
value = 1070
triggerall = command = "DU_b"
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 1010
trigger10 = stateno = 1020
trigger11 = stateno = 3000
[State -1]
type = ChangeState
value = 1060
triggerall = command = "FBF_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1070
trigger2 = Time  >= 15
trigger2 = Power > 0
trigger3 = stateno = 2000
trigger4 = stateno >= 150        
trigger4 = stateno <= 153        
[State -1]
type = ChangeState
value = 1060
triggerall = command = "FBF_b"
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 1010
trigger10 = stateno = 3000
trigger11 = stateno = 1020
trigger11 = time >= 50
[State -1]
type = ChangeState
value = 1050
triggerall = command = "QCB_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
[State -1]
type = ChangeState
value = 1050
triggerall = command = "QCB_b"
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
[State -1]
type = ChangeState
value = 2100
triggerall = PalNo = [1, 6]
trigger1 = command = "ax"
trigger1 = CanRecover = 1
trigger1 = HitFall = 1
trigger1 = StateType = A
trigger1 = HitOver = 1
trigger1 = Alive = 1
[State -1]
type = ChangeState
value = 2100
triggerall = PalNo = [7, 12]
trigger1 = CanRecover = 1
trigger1 = HitFall = 1
trigger1 = StateType = A
trigger1 = HitOver = 1
trigger1 = Alive = 1
[State -1]
type = ChangeState
value = 2100
triggerall = PalNo = [1, 6]
triggerall = command = "ax"
triggerall = Alive = 1
triggerall = var(5) != 0
triggerall = Pos Y < 0
trigger1 = stateno = 5035
trigger2 = stateno = 5020
trigger3 = stateno = 5030
trigger4 = stateno = 5050
trigger5 = stateno = 5040
trigger6 = stateno = 5071
trigger7 = stateno = 5000
trigger8 = stateno = 5001
trigger9 = stateno = 5002
trigger10 = stateno = 5010
trigger11 = stateno = 5011
trigger12 = stateno = 5012
trigger13 = stateno = 5020
trigger14 = stateno = 5021
trigger15 = stateno = 5022
trigger16 = stateno = 5110
trigger17 = stateno = 5120
[State -1]
type = ChangeState
value = 2100
triggerall = PalNo = [7, 12]
triggerall = Alive = 1
triggerall = var(5) != 0
triggerall = Pos Y < 0
trigger1 = stateno = 5035
trigger2 = stateno = 5020
trigger3 = stateno = 5030
trigger4 = stateno = 5050
trigger5 = stateno = 5040
trigger6 = stateno = 5071
trigger7 = stateno = 5000
trigger8 = stateno = 5001
trigger9 = stateno = 5002
trigger10 = stateno = 5010
trigger11 = stateno = 5011
trigger12 = stateno = 5012
trigger13 = stateno = 5020
trigger14 = stateno = 5021
trigger15 = stateno = 5022
trigger16 = stateno = 5110
trigger17 = stateno = 5120
[State -1]
type = ChangeState
value = 2100
triggerall = command = "ax"
trigger1 = StateType = A
trigger1 = ctrl = 1
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = StateNo = 2000
[State -1]
type = ChangeState
value = 1040
triggerall = PalNo = [1, 6]
triggerall = command = "holda"
triggerall = command = "holdx"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
[State -1]
type = ChangeState
value = 1040
triggerall = PalNo = [7, 12]
triggerall = Pos Y >= 0
triggerall = command = "holda"
triggerall = command = "holdx"
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 75
triggerall = PalNo = [1, 6]
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 75
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X > 60
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 80
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 85
trigger1 = command = "DD"
trigger1 = statetype = A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 1080
triggerall = command = "fwd_x"  
triggerall = p2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno = 50
trigger4 = stateno = 70
[State -1]
type = ChangeState
value = 1090
triggerall = PalNo = [1, 6]
triggerall = command = "Hell's Smash"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 40          
trigger3 = stateno = 2000
[State -1]
type = ChangeState
value = 1090
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 60
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -60
triggerall = command = "Hell's Smash"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 40          
trigger3 = stateno = 2000
[State -1]
type = ChangeState
value = 1090
triggerall = command = "Hell's Smash"
triggerall = movecontact
trigger1 = stateno = 200         
trigger2 = stateno = 201         
trigger3 = stateno = 202         
trigger4 = stateno = 212         
trigger5 = stateno = 210         
trigger6 = stateno = 211         
trigger7 = stateno = 400         
trigger8 = stateno = 410         
trigger9 = stateno = 610         
trigger9 = time >= 12
trigger10 = stateno = 2100       
trigger10 = time >= 12
trigger11 = stateno = 1020
trigger11 = time >= 50         
[State -1]
type = ChangeState
value = 1090
triggerall = PalNo = [1, 6]
triggerall = command = "Hell's Smash"
triggerall = var(5) != 0
triggerall = alive = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno >= 150
trigger2 = Stateno <= 153
trigger3 = stateno = 5000
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
[State -1]
type = ChangeState
value = 1090
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 15
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -60
triggerall = var(5) != 0
triggerall = alive = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno >= 150
trigger2 = Stateno <= 153
trigger3 = stateno = 5000
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
[State -1]
type = ChangeState
value = 1999
triggerall = command = "Bukuu Jutsu"
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 2000
triggerall = command = "Bukuu Jutsu"
trigger1 = statetype = A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 1030
triggerall = command = "Kikou Ha"
trigger1 = statetype = S         
trigger1 = ctrl = 1              
trigger2 = stateno = 2000        
[State -1]
type = ChangeState
value = 2001
triggerall = command = "Instantaneous Movement"
triggerall = NumProjID(2001) = 0
triggerall = StateNo != [1090, 1098]
trigger1 = statetype = S         
trigger1 = ctrl = 1              
trigger2 = stateno = 2000        
[State -1]
type = ChangeState
value = 2001
triggerall = PalNo = [1, 6]
triggerall = command = "Instantaneous Movement"
triggerall = NumProjID(2001) = 0
triggerall = alive = 1           
triggerall = StateNo != [1090, 1098]
trigger1 = ctrl = 1              
trigger1 = stateno >= 150        
trigger2 = Stateno <= 153
trigger3 = stateno = 5000        
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
trigger14 = stateno = 5110
trigger15 = stateno = 5035
trigger16 = stateno = 5030
trigger17 = stateno = 5050
trigger18 = stateno = 5040
trigger19 = stateno = 5071
[State -1]
type = ChangeState
value = 2001
triggerall = PalNo = [1, 6]
triggerall = command = "recovery"
triggerall = NumProjID(2001) = 0
triggerall = alive = 1           
triggerall = StateNo != [1090, 1098]
trigger1 = ctrl = 1              
trigger1 = stateno >= 150        
trigger2 = Stateno <= 153
trigger3 = stateno = 5000        
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
trigger14 = stateno = 5110
trigger15 = stateno = 5035
trigger16 = stateno = 5030
trigger17 = stateno = 5050
trigger18 = stateno = 5040
trigger19 = stateno = 5071
trigger20 = MoveType = H
[State -1]
type = ChangeState
value = 2004
triggerall = PalNo = [1, 6]
triggerall = command = "holdb"
triggerall = command = "holdy"
trigger1 = statetype = S         
trigger1 = ctrl = 1              
trigger2 = stateno = 2000        
trigger3 = stateno >= 150        
trigger3 = stateno <= 153
trigger3 = Time >= 20            
                                 
[State -1]
type = ChangeState
value = 2004
triggerall = PalNo = [7, 12]
triggerall = Pos Y >= 0
triggerall = command = "holdb"
triggerall = command = "holdy"
trigger1 = statetype = S         
trigger1 = ctrl = 1              
[State -1]
type = ChangeState
value = 2004
triggerall = command = "holdb"
triggerall = command = "holdy"
triggerall = Alive = 1
triggerall = var(5) != 0
trigger1 = stateno = 5035
trigger2 = stateno = 5020
trigger3 = stateno = 5030
trigger4 = stateno = 5050
trigger5 = stateno = 5040
trigger6 = stateno = 5071
trigger7 = stateno = 5000
trigger8 = stateno = 5001
trigger9 = stateno = 5002
trigger10 = stateno = 5010
trigger11 = stateno = 5011
trigger12 = stateno = 5012
trigger13 = stateno = 5020
trigger14 = stateno = 5021
trigger15 = stateno = 5022
trigger16 = stateno = 5110
trigger17 = stateno = 5120
[State -1]
type = ChangeState
value = 2014
triggerall = PalNo = [1, 6]
triggerall = command = "Smash Down"
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno >= 150        
trigger3 = stateno <= 153        
[State -1]
type = ChangeState
value = 2014
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 40
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -70
triggerall = command = "Smash Down"
trigger1 = ctrl = 1
trigger2 = stateno = 2000
trigger3 = stateno >= 150        
trigger3 = stateno <= 153        
[State -1]
type = ChangeState
value = 2014
triggerall = command = "Smash Down"
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 1010
trigger10 = stateno = 1020
trigger11 = stateno = 3000
[State -1]
type = ChangeState
value = 70
triggerall = command = "High Jump"
trigger1 = statetype != A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 200
triggerall = PalNo = [1, 6]
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1              
trigger1 = command != "holddown"
trigger2 = stateno = 2000        
trigger3 = stateno >= 130
trigger3 = stateno <= 132
[State -1]
type = ChangeState
value = 200
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 50
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -70
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1              
trigger1 = command != "holddown"
trigger2 = stateno = 2000        
trigger3 = stateno >= 130
trigger3 = stateno <= 132
[State -1]
type = ChangeState
value = 200
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = stateno = 201         
trigger2 = stateno = 202         
trigger3 = stateno = 210         
trigger4 = stateno = 211         
trigger5 = stateno = 400         
trigger6 = stateno = 410         
[State -1]
type = ChangeState
value = 200
triggerall = command = "y"       
triggerall = command != "holddown"
trigger1 = movecontact
trigger1 = stateno = 202         
trigger1 = movecontact       
[State -1]
type = ChangeState
value = 201
triggerall = PalNo = [1, 6]
triggerall = command = "x"
trigger1 = command != "holddown"
trigger1 = statetype = S         
trigger1 = ctrl = 1
trigger2 = stateno = 2000        
trigger3 = stateno >= 130
trigger3 = stateno <= 132
[State -1]
type = ChangeState
value = 201
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 25
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -70
triggerall = command = "x"
trigger1 = command != "holddown"
trigger1 = statetype = S         
trigger1 = ctrl = 1
trigger2 = stateno = 2000        
trigger3 = stateno >= 130
trigger3 = stateno <= 132
[State -1]
type = ChangeState
value = 202
triggerall = PalNo = [1, 6]
triggerall = command = "y"
trigger1 = command != "holddown" 
trigger1 = statetype = S         
trigger1 = ctrl = 1              
trigger2 = stateno = 2000        
[State -1]
type = ChangeState
value = 202
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 35
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -70
triggerall = command = "y"
trigger1 = command != "holddown" 
trigger1 = statetype = S         
trigger1 = ctrl = 1              
trigger2 = stateno = 2000        
[State -1]
type = ChangeState
value = 202
triggerall = command = "y"
triggerall = command != "holddown" 
triggerall = movecontact
trigger1 = stateno = 201         
trigger2 = stateno = 202         
trigger3 = stateno = 210         
trigger4 = stateno = 211         
trigger5 = stateno = 400         
trigger6 = stateno = 410         
[State -1]
type = ChangeState
value = 202
triggerall = command = "x"       
triggerall = command != "holddown"
trigger1 = stateno = 201         
trigger1 = movecontact       
[State -1]
type = ChangeState
value = 210
triggerall = PalNo = [1, 6]
triggerall = command = "b"
trigger1 = command != "holddown"
trigger1 = statetype = S         
trigger1 = ctrl = 1
trigger2 = stateno = 2000        
trigger3 = stateno >= 130
trigger3 = stateno <= 132
[State -1]
type = ChangeState
value = 210
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 50
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -70
triggerall = command = "b"
trigger1 = command != "holddown"
trigger1 = statetype = S         
trigger1 = ctrl = 1
trigger2 = stateno = 2000        
trigger3 = stateno >= 130
trigger3 = stateno <= 132
Medium Kick - During Combos
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = stateno = 201         
trigger2 = stateno = 202         
trigger3 = stateno = 211         
trigger4 = stateno = 400         
trigger5 = stateno = 410         
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"       
triggerall = command != "holddown"
trigger1 = stateno = 211         
trigger1 = movecontact       
[State -1]
type = ChangeState
value = 211
triggerall = PalNo = [1, 6]
triggerall = command = "a"
trigger1 = command != "holddown"
trigger1 = statetype = S         
trigger1 = ctrl = 1
trigger2 = command != "holddown"
trigger2 = stateno = 201         
trigger2 = movecontact       
trigger3 = stateno = 2000
[State -1]
type = ChangeState
value = 211
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 40
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -70
triggerall = command = "a"
trigger1 = command != "holddown"
trigger1 = statetype = S         
trigger1 = ctrl = 1
trigger2 = command != "holddown"
trigger2 = stateno = 201         
trigger2 = movecontact       
trigger3 = stateno = 2000
[State -1]
type = ChangeState
value = 212
triggerall = PalNo = [1, 6]
triggerall = command = "c"
trigger1 = command != "holddown"
trigger1 = statetype = S         
trigger1 = ctrl = 1
trigger2 = stateno = 2000        
trigger3 = stateno >= 130
trigger3 = stateno <= 132
[State -1]
type = ChangeState
value = 212
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 50
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -70
triggerall = command = "c"
trigger1 = command != "holddown"
trigger1 = statetype = S         
trigger1 = ctrl = 1
trigger2 = stateno = 2000        
trigger3 = stateno >= 130
trigger3 = stateno <= 132
[State -1]
type = ChangeState
value = 212
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = stateno = 200         
trigger2 = stateno = 201         
trigger3 = stateno = 202         
trigger4 = stateno = 210         
trigger5 = stateno = 211         
trigger6 = stateno = 400         
trigger7 = stateno = 410         
[State -1]
type = ChangeState
value = 212
triggerall = command = "b"       
triggerall = command != "holddown"
trigger1 = stateno = 210         
trigger1 = movecontact       
[State -1]
type = ChangeState
value = 400
triggerall = PalNo = [1, 6]
triggerall = command = "holddown"  
triggerall = Pos Y >= 0
triggerall = statetype = C
trigger1 = ctrl = 1
trigger1 = command = "x"         
trigger2 = command = "y"
trigger3 = command = "z"
[State -1]
type = ChangeState
value = 400
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 40
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -40
triggerall = command = "holddown"  
triggerall = Pos Y >= 0
triggerall = statetype = C
trigger1 = ctrl = 1
trigger1 = command = "x"         
trigger2 = command = "y"
trigger3 = command = "z"
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = Pos Y >= 0
triggerall = movecontact
triggerall = time >= 7
trigger1 = stateno = 200         
trigger2 = stateno = 201         
trigger3 = stateno = 202         
trigger4 = stateno = 210         
trigger5 = stateno = 211         
trigger6 = stateno = 212         
trigger7 = stateno = 400         
trigger8 = stateno = 410         
[State -1]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = Pos Y >= 0
triggerall = movecontact
triggerall = time >= 7
trigger1 = stateno = 200         
trigger2 = stateno = 201         
trigger3 = stateno = 202         
trigger4 = stateno = 210         
trigger5 = stateno = 211         
trigger6 = stateno = 212         
trigger7 = stateno = 400         
trigger8 = stateno = 410         
[State -1]
type = ChangeState
value = 400
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = Pos Y >= 0
triggerall = movecontact
triggerall = time >= 7
trigger1 = stateno = 200         
trigger2 = stateno = 201         
trigger3 = stateno = 202         
trigger4 = stateno = 210         
trigger5 = stateno = 211         
trigger6 = stateno = 212         
trigger7 = stateno = 400         
trigger8 = stateno = 410         
[State -1]
type = ChangeState
value = 410
triggerall = PalNo = [1, 6]
triggerall = command = "holddown"
triggerall = Pos Y >= 0
triggerall = statetype = C
trigger1 = ctrl = 1
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
[State -1]
type = ChangeState
value = 410
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 50
triggerall = P2BodyDist Y < 20 && P2BodyDist Y >= -40
triggerall = command = "holddown"
triggerall = Pos Y >= 0
triggerall = statetype = C
trigger1 = ctrl = 1
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = Pos Y >= 0
triggerall = movecontact
triggerall = time >= 7
trigger1 = stateno = 200         
trigger2 = stateno = 201         
trigger3 = stateno = 202         
trigger4 = stateno = 210         
trigger5 = stateno = 211         
trigger6 = stateno = 212         
trigger7 = stateno = 400         
trigger8 = stateno = 410         
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = Pos Y >= 0
triggerall = movecontact
triggerall = time >= 7
trigger1 = stateno = 200         
trigger2 = stateno = 201         
trigger3 = stateno = 202         
trigger4 = stateno = 210         
trigger5 = stateno = 211         
trigger6 = stateno = 212         
trigger7 = stateno = 400         
trigger8 = stateno = 410         
[State -1]
type = ChangeState
value = 410
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = Pos Y >= 0
triggerall = movecontact
triggerall = time >= 7
trigger1 = stateno = 200         
trigger2 = stateno = 201         
trigger3 = stateno = 202         
trigger4 = stateno = 210         
trigger5 = stateno = 211         
trigger6 = stateno = 212         
trigger7 = stateno = 400         
trigger8 = stateno = 410         
[State -1]
type = ChangeState
value = 610
triggerall = PalNo = [1, 6]
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "x"         
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = command = "a"
trigger5 = command = "b"
trigger6 = command = "c"
[State -1]
type = ChangeState 
value = 610
triggerall = PalNo = [7, 12]
triggerall = P2BodyDist X <= 50 && P2BodyDist X > 15
triggerall = P2BodyDist Y < 50 && P2BodyDist Y >= -30
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "x"         
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = command = "a"
trigger5 = command = "b"
trigger6 = command = "c"
[State -1]
type = ChangeState
value = 610
triggerall = command = "x"
triggerall = movecontact
triggerall = time >= 5
trigger1 = stateno = 610
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = movecontact
triggerall = time >= 5
trigger1 = stateno = 610
[State -1]
type = ChangeState
value = 610
triggerall = command = "z"
triggerall = movecontact
triggerall = time >= 5
trigger1 = stateno = 610
[State -1]
type = ChangeState
value = 610
triggerall = command = "a"
triggerall = movecontact
triggerall = time >= 5
trigger1 = stateno = 610
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
triggerall = movecontact
triggerall = time >= 5
trigger1 = stateno = 610
[State -1]
type = ChangeState
value = 610
triggerall = command = "c"
triggerall = movecontact
triggerall = time >= 5
trigger1 = stateno = 610

