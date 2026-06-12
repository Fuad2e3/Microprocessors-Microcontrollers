.DATA
    deposit_menu DB 'DEPOSIT', 13, 10
                 DB '1.  Dollar. 10', 13, 10
                 DB '2.  Dollar. 20', 13, 10
                 DB '3.  Dollar. 50', 13, 10
                 DB '4.  Dollar. 100', 13, 10
                 DB 'Enter >> ', '$'
            
    ms1 DB 'How Many Years: $'
    ms2 DB 'How Much Money: $'
    profits DB 'The profit: $'

    main_menu DB '1.Invest   2. Withdraw  3. Profit ', 13, 10
              DB 'Enter >> ', '$'

    invest_message DB 'Money Invest Successfully.', '$'
    withdraw_message DB 'Money Withdraw  Successfully.', '$'


.CODE
    START: 
    MOV AX, @DATA
    MOV DS, AX  
    
        ; Display main menu
        CALL NEWLINE
        CALL NEWLINE
              
        MOV DX, OFFSET main_menu
        MOV AH, 09H
        INT 21H  
        
        ; Read user input
        MOV AH, 01H
        INT 21H
        SUB AL, '0'      
        CMP AL, 1
        JE INVEST
        CMP AL, 2
        JE WITHDRAW
        CMP AL, 3
        JE PROFIT
           
    INVEST:  
        CALL NEWLINE
        CALL NEWLINE
        
        ; Display deposit menu
        MOV DX, OFFSET deposit_menu
        MOV AH, 09H
        INT 21H
        ; Read user input
        MOV AH, 01H
        INT 21H
         
        CALL NEWLINE
        CALL NEWLINE
        
        ; Display success message for investment
        MOV DX, OFFSET invest_message
        MOV AH, 09H
        INT 21H 
        
        JMP START

    NEWLINE:
        MOV AH, 02h
        MOV DL, 0dh           
        INT 21h
        MOV DL, 0ah           
        INT 21h
        RET

    WITHDRAW:
        CALL NEWLINE
        CALL NEWLINE
        
        ; Display deposit menu
        MOV DX, OFFSET deposit_menu
        MOV AH, 09H
        INT 21H
        ; Read user input
        MOV AH, 01H
        INT 21H 
        
        CALL NEWLINE
        CALL NEWLINE
        
        ; Display success message for withdrawal
        MOV DX, OFFSET withdraw_message
        MOV AH, 09H
        INT 21H

        JMP START 
        
    PROFIT: 
        CALL NEWLINE
        CALL NEWLINE
        
        ; Display message
        MOV DX, OFFSET ms1
        MOV AH, 09H
        INT 21H
        
        ; Read number of years
        MOV AH, 01H
        INT 21H
        SUB AL, 48       
        MOV BL, AL         
        
        CALL NEWLINE
        CALL NEWLINE
        
        ; Display message
        MOV DX, OFFSET ms2
        MOV AH, 09H
        INT 21H
        
        ; Read amount of money
        MOV AH, 01H
        INT 21H
        SUB AL, 48       
              
        
        ; Calculate profit
        MUL BL
        ADD AL, 48
        MOV BL, AL        
    
        CALL NEWLINE
        CALL NEWLINE 
    
        ; Display result message
        MOV DX, OFFSET profits
        MOV AH, 09H
        INT 21H
        
        ; Display result value
        MOV AH, 02H
        MOV DL, BL
        INT 21H
    
        JMP START 


END START