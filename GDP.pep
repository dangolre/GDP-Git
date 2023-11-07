; Author: Reeya Dangol

; Program Assignment: GDP Program (AL Program 1)

; Program Description: This program inputs 5 decimal integers representing the consumption, investment, government spending , exports and imports     ;                      simultaneously. It then computes and outputs the net exports as well as GDP.

;

; Plagiarism Statement:

;       I swear that I have not received or given aid on this program

;       beyond guidelines of the course including giving or receiving

;       specific code content.


BR main                   ; Branch around data to main          

         ; Storage
         consumpt: .BLOCK 2                ; Storage for input consumption
         investm:  .BLOCK 2                ; Storage for input investment
         spending: .BLOCK 2                ; Storage for input government spending
         exports: .BLOCK 2                 ; Storage for input exports 
         imports: .BLOCK 2                 ; Storage for input imports
         net: .BLOCK 2                     ; Storage for net exports
         GDP: .BLOCK 2                     ; Storage for GDP

         ; Output messages
         output1: .ASCII "Net Exports: \x00"   ; Diplays 1st message in output 
         output2: .ASCII "\nGDP: \x00"          ; Diplays 2nd message in output
       

main:    DECI consumpt,d                   ; Gets input consumption 
         DECI investm,d                    ; Gets input investment 
         DECI spending,d                   ; Gets input government spending 
         DECI exports,d                    ; Gets input exports
         DECI imports,d                    ; Gets input imports

         ; Calculate Net Exports
         LDWA exports,d                    ; A <- input(exports)
         SUBA imports,d                    ; Subtracts imports from exports 
         STWA net,d                        ; Stores the difference as net exports ; Net exports = exports - imports 
         
         ; Display Net Exports
         STRO output1,d                    ; Displays the value of output1 
         DECO net,d                        ; Outputs the value of net exports

         ; Calculate GDP
         LDWA consumpt,d                   ; A <- input(consumption)
         ADDA investm,d                    ; Adds investment to consumption
         ADDA spending,d                   ; Adds spending to the sum of investment and consumption
         ADDA net,d                        ; Adds net to the sum of investment, consumption, and spending
         STWA GDP,d                        ; Stores the sum as GDP ; GDP = Consumption + Investment + Government Spending + Net Exports

         ; Display GDP
         STRO output2,d                    ; Displays the value of output2 
         DECO GDP,d                        ; Outputs the value of GDP
                      

         end:   STOP         ; Stops the program
               .END
