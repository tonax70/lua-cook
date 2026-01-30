program doc
    use utils;
    implicit none;

    call docPrint("My first lua test program", "./helloLua/cs.txt");
    call docPrint("Lua cheatsheet", "./helloLua/cs.txt");
    
    contains
    subroutine docPrint (heading, path) 
    character (len=*), intent(in) :: heading, path;
    call lb();
    print *, "============================================"//heading//"============================================";
    call lb();
    call readFile(path);
    end subroutine docPrint

end program doc
