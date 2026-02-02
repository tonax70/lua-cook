program doc
    use utils;
    implicit none;
    integer :: choice;
    print *, "Choose sources to view: ";
    read(*,*) choice;

    select case (choice)
    case (1)
    call docPrint("My first lua test program", "./helloLua/main.lua");
    call docPrint("Lua cheatsheet", "./helloLua/cs.txt");

    case (2)
    call docPrint("Basic love funcions: load, update, draw", "./basicLove/main.lua");

    case default 
    print *, "invalid case, exit.";
    end select
    
    contains
    subroutine docPrint (heading, path) 
    implicit none;
    character (len=*), intent(in) :: heading, path;
    call lb();
    print *, "============================================ "//heading//" ============================================";
    call lb();
    call readFile(path);
    end subroutine docPrint

end program doc
