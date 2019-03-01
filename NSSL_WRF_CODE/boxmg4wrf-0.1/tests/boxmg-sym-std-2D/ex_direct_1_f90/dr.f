      REAL*8 FUNCTION dr( i, j, hx, hy )

C ==========================================================================
C  --------------------
C   DESCRIPTION:
C  --------------------
C
C     Sets the (1,1) entry of (diagonal) diffusion tensor.
C     
C =======================================================================
C $license_flag$
C =======================================================================
C  --------------------
C   INPUT:
C  --------------------
C
C
C =======================================================================
C  --------------------
C   INPUT/OUTPUT:
C  --------------------
C
C
C =======================================================================
C  --------------------
C   OUTPUT:
C  --------------------
C
C
C =======================================================================
C  --------------------
C   LOCAL:
C  --------------------
C
C
C ==========================================================================

      IMPLICIT NONE

C ----------------
C     Arguments
C
      INTEGER  i, j
      REAL*8   hx, hy

C ----------------
C     Local
C
      INTEGER  n
      REAL*8   dyb, dyt, eps, xo, yb, yt

C -----------------
C     Includes
C
      INCLUDE 'common2.h'

C ==========================================================================

      DATA eps /1.e-08/

      dr = dix(1)
      
      IF ( ireg.EQ.1 ) RETURN

      xo = (i-2.5)*hx
      yb = (j-2.5)*hy
      yt = yb+hy

      dyb = dix(1)

      DO 10 n=2,ireg
         IF ( x1(n)-eps.GT.xo .OR. xo.GT.x2(n)+eps  .OR.
     &        y1(n)-eps.GT.yb .OR. yb.gt.y2(n)+eps ) GO TO 10
         dyb = dix(n)
         GO TO 20
 10   CONTINUE

 20   dyt = dix(1)

      DO 30 n=2,ireg
         IF ( x1(n)-eps.GT.xo .OR. xo.GT.x2(n)+eps  .OR.
     &        y1(n)-eps.GT.yt .OR. yt.GT.y2(n)+eps ) GO TO 30
         dyt = dix(n)
         GO TO 40
 30   CONTINUE

 40   dr = 0.5*( dyb+dyt )

C ==========================================================================

      RETURN
      END