program test_random_seed
    implicit none
    !real :: u(5)
    !INTEGER:: m,n
    !m = 1
    !n = 5
    !call random_number(u)
    !j = NINT((m+1-n)*u)  ! We want to choose one from m-n+1 integers
    !print*, u
    !print*, 1+FLOOR(4*u)
    !print*, n + NINT((m-n)*u)

    INTEGER :: i,j,k,l,m
    INTEGER :: design(4) = (/1,3,3,3/)!(/1,2,3,4/)
    INTEGER :: ptest(4) = (/1,1,1,1/) !(/4,3,2,1/)
    INTEGER,PARAMETER :: pool = 100, length = 10 !pool = 20, length = 10
    INTEGER :: stage(pool)
    INTEGER :: level(pool)
    INTEGER :: pnum(pool)
    INTEGER :: itemID(pool)

    i=1
    do j=1,4
        do k=1,design(j)
            do l=1,ptest(j)
                do m=1,length
                    stage(i)=j
                    level(i)=k
                    pnum(i)=l
                    itemID(i)=m
                    i=i+1
                enddo
            enddo
        enddo
    enddo
    
    open(unit = 100 , file = 'List_try.txt' , status = 'replace', action = 'write')
    write(unit = 100, fmt = '(4A10)') "stage","level","pnum","itemID"
    do i=1,pool
        write(unit = 100, fmt = '(4I10)') stage(i),level(i),pnum(i),itemID(i)
    end do
    close(100)

end program test_random_seed