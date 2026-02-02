program doc
    use utils;
    implicit none;
    character (len=1) :: choice;
    print *, "Choose sources to view: ";
    read(*,*) choice;

    select case (choice)
    case ('1')
    call docPrint("My first lua test program", "./helloLua/main.lua");
    call docPrint("Lua cheatsheet", "./helloLua/cs.txt");

    case ('2')
    call docPrint("Basic love funcions: load, update, draw", "./basicLove/main.lua");

    case ('3')
    call docPrint("Basic shapes and color", "./basicShapesAndColor/main.lua");

    case ('4')
    call docPrint("legacy bouncing ball logic", "./basicBouncingBall/logic.ts");
    call docPrint("legacy bouncing ball code", "./basicBouncingBall/main.lua");

    case ('5')
    call docPrint("new bouncing ball logic", "./basicBouncingBall/logicImproved.ts");
    call docPrint("new bouncing ball code", "./basicImprovedBall/main.lua");

    
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
