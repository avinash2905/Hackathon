       IDENTIFICATION DIVISIO.
       PROGRAM-ID. X9.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 A PIC 9(3) VALUE 0.
       01 B PIC 9(3) VALUE 0.
       01 C PIC 9(3) VALUE 0.
       01 D PIC 9(3) VALUE 0.
       01 X PIC 9(3).
       01 Y PIC 9(3).
       01 Z PIC 9(3).

       PROCEDURE DIVISION.

       MAIN-START.

           MOVE 10 TO A
           MOVE 20 TO B
           MOVE 0 TO C
           MOVE 0 TO D

           IF A > 5
               MOVE A TO X
               ADD B TO X
               MOVE X TO C
           ELSE
               MOVE B TO X
               SUBTRACT A FROM X
               MOVE X TO C
           END-IF

           IF C > 15
               MOVE C TO Y
               ADD 5 TO Y
               MOVE Y TO D
           ELSE
               MOVE C TO Y
               SUBTRACT 3 FROM Y
               MOVE Y TO D
           END-IF

           IF D > 25
               MOVE D TO Z
               SUBTRACT 2 FROM Z
               MOVE Z TO D
           ELSE
               ADD 1 TO D
           END-IF

           PERFORM LOOP-1
           DISPLAY "RESULT=" D

           STOP RUN.

       LOOP-1.

           MOVE 1 TO X

           PERFORM UNTIL X > 5

               IF X = 1
                   ADD A TO D
               ELSE
                   IF X = 2
                       ADD B TO D
                   ELSE
                       IF X = 3
                           SUBTRACT A FROM D
                       ELSE
                           IF X = 4
                               ADD C TO D
                           ELSE
                               SUBTRACT B FROM D
                           END-IF
                       END-IF
                   END-IF
               END-IF

               ADD 1 TO X

           END-PERFORM.
