module mymodule
    use, intrinsic :: iso_fortran_env, only : dp => REAL64
    use, intrinsic :: iso_fortran_env, only : sp => REAL32
    implicit none

    public :: sum_array, norm_array

contains

    function sum_array(a) result(s)
        implicit none
        real(kind=8), intent(in), dimension(:) :: a
        real(kind=8) :: s
        integer :: i, n
        n = size(a)
        s = 0.0D00
        do i = 1, n
            s = s + a(i)
            write (6,*) a(i)
        end do
    end function sum_array

    subroutine norm_array(a,c,n)
        integer :: n
        real(8),dimension(n),intent(in) :: a
        !f2py optional , depend(a) :: n=len(a)
        real(8),intent(out) :: c
        real(8) :: sommec
        integer :: i
        sommec = 0
        do i=1,n
        sommec=sommec+a( i )*a( i )
        end do
        c=sqrt (sommec)
    end subroutine norm_array

end module mymodule
