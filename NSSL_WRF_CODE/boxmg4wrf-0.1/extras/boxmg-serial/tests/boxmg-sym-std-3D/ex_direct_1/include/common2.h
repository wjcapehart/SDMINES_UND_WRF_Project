C ==========================================================================
C  --------------------
C   DESCRIPTION:
C  --------------------
C
C     Region data for creating problems with discontinuous coefficients.
C     
C =======================================================================
C $license_flag$
C =======================================================================
C  --------------------
C   VARIABLES:
C  --------------------
C
C
C ==========================================================================

      INTEGER    iREGmax
      PARAMETER  (iREGmax=20)

      INTEGER    iBL, iBR, iByB, iByT, iBzB, iBzT, iREG 
      REAL*RKIND     Dix(iREGmax), Diy(iREGmax), Diz(iREGmax), 
     &           Fi(iREGmax), Si(iREGmax),
     &           X1(iREGmax), X2(iREGmax), 
     &           Y1(iREGmax), Y2(iREGmax), 
     &           Z1(iREGmax), Z2(iREGmax)

      COMMON     /iDC2/ iREG, iBL, iBR, iByB, iByT, iBzB, iBzT
      COMMON     /rDC2/ X1, X2, Y1, Y2, Z1, Z2, Dix, Diy, Diz, Si, Fi

C ==========================================================================


