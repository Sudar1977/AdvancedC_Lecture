#include <curses.h> 
int main() 
{ 
char string[]="Hello world!"; 
int x=0,y=10; 
   initscr(); 
   printw(string); /* Напечатать на стандартном экране stdscr */ 
                   /* в текущей позиции курсора */ 
   mvprintw(y, x, string);/* Напечатать в позиции (y, x) */ 
   getch(); 
   endwin(); 
   return 0; 
}
