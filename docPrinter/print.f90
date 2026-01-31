program doc
    use utils;
    implicit none;
    print *, "Choose sources to view: ";
    read source;

    select case(source)
    case (1)
    call docPrint("My first lua test program", "../helloLua/cs.txt");
    call docPrint("Lua cheatsheet", "../helloLua/cs.txt");

    case default 
    print *, "invalid case, exit.";
    end select
    
    contains
    subroutine docPrint (heading, path) 
    character (len=*), intent(in) :: heading, path;
    call lb();
    print *, "============================================"//heading//"============================================";
    call lb();
    call readFile(path);
    end subroutine docPrint

end program doc
