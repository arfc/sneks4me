c-----------------------------------------------------------------------
c  nek5000 user-file template
c
c  user specified routines:
c     - uservp  : variable properties
c     - userf   : local acceleration term for fluid
c     - userq   : local source term for scalars
c     - userbc  : boundary conditions
c     - useric  : initial conditions
c     - userchk : general purpose routine for checking errors etc.
c     - userqtl : thermal divergence for lowMach number flows 
c     - usrdat  : modify element vertices 
c     - usrdat2 : modify mesh coordinates
c     - usrdat3 : general purpose routine for initialization
c     
c-----------------------------------------------------------------------
      subroutine uservp(ix,iy,iz,eg) ! set variable properties

c      implicit none

      integer ix,iy,iz,eg
     
      include 'SIZE'
      include 'TOTAL'
      include 'NEKUSE'

      integer e
c     e = gllel(eg)

      udiff  = 0.0
      utrans = 0.0

      return
      end
c-----------------------------------------------------------------------
      subroutine userf(ix,iy,iz,eg) ! set acceleration term
c
c     Note: this is an acceleration term, NOT a force!
c     Thus, ffx will subsequently be multiplied by rho(x,t).
c
c      implicit none

      integer ix,iy,iz,eg

      include 'SIZE'
      include 'TOTAL'
      include 'NEKUSE'

      integer e
c     e = gllel(eg)

      ffx = 0.0
      ffy = 0.0
      ffz = 0.0

      return
      end
c-----------------------------------------------------------------------
      subroutine userq(ix,iy,iz,eg) ! set source term

c      implicit none

      integer ix,iy,iz,eg

      include 'SIZE'
      include 'TOTAL'
      include 'NEKUSE'

      integer e
c     e = gllel(eg)

      qvol   = 20000000.0 ! TM 728 - 14-31 MW/m3

      return
      end
c-----------------------------------------------------------------------
      subroutine userbc(ix,iy,iz,iside,eg) ! set up boundary conditions
c
c     NOTE ::: This subroutine MAY NOT be called by every process
c
c      implicit none

      integer ix,iy,iz,iside,eg

      include 'SIZE'
      include 'TOTAL'
      include 'NEKUSE'

c      if (cbc(iside,gllel(eg),ifield).eq.'v01')

      ux   = 0.0
      uy   = 0.0
      uz   = 1.0
      if(z==0) temp = 908.15 ! Inlet temp

      return
      end
c-----------------------------------------------------------------------
      subroutine useric(ix,iy,iz,eg) ! set up initial conditions

c      implicit none

      integer ix,iy,iz,eg

      include 'SIZE'
      include 'TOTAL'
      include 'NEKUSE'

      ux   = 0.0
      uy   = 0.0
      uz   = 1.0
      temp = 908.15 ! Inlet temp

      return
      end
c-----------------------------------------------------------------------
      subroutine userchk()

c      implicit none

      include 'SIZE'
      include 'TOTAL'
      
      call gen_rea(2)
c      call gen_rea_full(2)

      return
      end
c-----------------------------------------------------------------------
      subroutine userqtl ! Set thermal divergence

      call userqtl_scig 

      return
      end
c-----------------------------------------------------------------------
      subroutine usrdat()   ! This routine to modify element vertices

c      implicit none

      include 'SIZE'
      include 'TOTAL'

      return
      end
c-----------------------------------------------------------------------
      subroutine usrdat2()  ! This routine to modify mesh coordinates

c      implicit none

      include 'SIZE'
      include 'TOTAL'

      ntot = nx1*ny1*nz1*nelt

      do iel=1,nelv
          do ifc=1,2*ndim
              id_face = bc(5,ifc,iel,1)
              bc(5,ifc,iel,2) = id_face
              bc(4,ifc,iel,2) = bc(5,ifc,iel,2)
              if (id_face.eq.100) then       ! Inlet
                  cbc(ifc,iel,1) = 'v  '
                  cbc(ifc,iel,2) = 't  '
              elseif (id_face.eq.200) then   ! Outlet
                  cbc(ifc,iel,1) = 'O  '
                  cbc(ifc,iel,2) = 'O  ' 
              elseif (id_face.eq.300) then   ! plen1
                  cbc(ifc,iel,1) = 'SYM'
                  cbc(ifc,iel,2) = 'SYM'
              elseif (id_face.eq.400) then   ! plen2
                  cbc(ifc,iel,1) = 'SYM'
                  cbc(ifc,iel,2) = 'SYM'
     	      elseif (id_face.eq.500) then   ! plen3
                  cbc(ifc,iel,1) = 'SYM'
                  cbc(ifc,iel,2) = 'SYM'
     	      elseif (id_face.eq.600) then   ! plen4
                  cbc(ifc,iel,1) = 'SYM'
                  cbc(ifc,iel,2) = 'SYM'
     	      elseif (id_face.eq.700) then   ! inner wall
                  cbc(ifc,iel,1) = 'W  '
                  cbc(ifc,iel,2) = 'E  '
     	      elseif (id_face.eq.800) then   ! upper wall
                  cbc(ifc,iel,1) = 'W  '
                  cbc(ifc,iel,2) = 'E  '
     	      elseif (id_face.eq.900) then   ! sym plane1
                  cbc(ifc,iel,1) = 'SYM'
                  cbc(ifc,iel,2) = 'SYM'
     	      elseif (id_face.eq.1000) then   ! sym plane2
                  cbc(ifc,iel,1) = 'SYM'
                  cbc(ifc,iel,2) = 'SYM'
     	      elseif (id_face.eq.1100) then   ! sym plane2
                  cbc(ifc,iel,1) = 'E  '
                  cbc(ifc,iel,2) = 'E  '
              endif
          enddo
      enddo

c      param(54) = 3
c      param(55) = 1
      dh=0.6241
c xm1 - x mesh
c scale x mesh by hyd dia in mesh units (in)
      call cmult(xm1,1./dh,ntot)    
      call cmult(ym1,1./dh,ntot)
      call cmult(zm1,1./dh,ntot)
      
      return
      end
c-----------------------------------------------------------------------
      subroutine usrdat3()

c      implicit none

      include 'SIZE'
      include 'TOTAL'

      return
      end

c automatically added by makenek
      subroutine usrsetvert(glo_num,nel,nx,ny,nz) ! to modify glo_num
      integer*8 glo_num(1)

      return
      end
