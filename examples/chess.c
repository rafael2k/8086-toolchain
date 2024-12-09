/* From https://github.com/shreejilucifer/Chess-In-C
 * ELKS port by Rafael Diniz */

#include "nanoprintf.h"

extern int write(int, char *, int);
extern int read(int, void *, int count);
extern void exit(int);

/* A simple wrapper to printf */
#define LINE_SIZE 80
char buffer_internal[LINE_SIZE];
int npf_printf(const char *format, ...) {
	va_list val;
	va_start(val, format);
	int const rv = npf_vsnprintf(buffer_internal, LINE_SIZE, format, val);
	va_end(val);
	write(1, buffer_internal, rv);
	return rv;
}


int pwstatus[8] = { 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 };
int pbstatus[8] = { 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 };

char board[8][8] = {
	{ 'R' , 'H' , 'C' , 'K' , 'Q' , 'C' , 'H' , 'R' },
	{ 'P' , 'P' , 'P' , 'P' , 'P' , 'P' , 'P' , 'P' },
	{ ' ' , ' ' , ' ' , ' ' , ' ' , ' ' , ' ' , ' ' },
	{ ' ' , ' ' , ' ' , ' ' , ' ' , ' ' , ' ' , ' ' },
	{ ' ' , ' ' , ' ' , ' ' , ' ' , ' ' , ' ' , ' ' },
	{ ' ' , ' ' , ' ' , ' ' , ' ' , ' ' , ' ' , ' ' },
	{ 'p' , 'p' , 'p' , 'p' , 'p' , 'p' , 'p' , 'p' },
	{ 'r' , 'h' , 'c' , 'k' , 'q' , 'c' , 'h' , 'r' }
};

void display();
void change( int , int , int , int );
void pawn(int , int );
void rook(int , int );
void horse(int , int );
void camel( int , int );
void king( int , int );
void queen( int , int );
void pawnb( int , int );
void player1();
void player2();
int check(int , int );
int check2(int , int );

int main()
{
	int  x = 0;
	char ch;

    npf_printf( "\n\t-- WELCOME TO CHESS GAME --" );
    npf_printf( "\n\n\t By Shreeji, Neel, Kirtan\n" );
	npf_printf( "\n\t ELKS port by Rafael Diniz\n" );

    read(0, &ch, 1);

	npf_printf("\033[H\033[J"); /* npf_printf("\x1b[H\x1b[J"); */

	do
	{
		x++;
		npf_printf("\033[H\033[J"); /* npf_printf("\x1b[H\x1b[J"); */
		display();

		if( (x%2) == 0 )
		{
			player2();
		}
		else
		{
			player1();
		}

		npf_printf( " \n\nPress Enter To Continue ! \n\n " );

		read(0, &ch, 1);
	} while( ch == 10 );
}

void display()
{
	char i, j, k;

    npf_printf(" ");

	/* asciified everything... +48 */
    for(i = 48; i < 56; i++)
	{
		npf_printf("    %c", i);
	}
	npf_printf( "\n" );

    for(k = 0; k < 8; k++ )
    {
		npf_printf( "  " );
		for( i=0; i<42; i++ ) {
			npf_printf( "-" );
		}
		npf_printf("\n");
		npf_printf("%c ", k + 48);

		for(j = 0; j < 8; j++ ) {
			npf_printf("|| %c ", board[k][j]);
		}
		npf_printf( "|| \n" );
    }

    npf_printf( "  " );
    for(i = 0; i < 42; i++ ) {
		npf_printf( "-" );
	}
	npf_printf( "\n" );

}

void change( int r1 , int c1 , int r2 , int c2 )
{
    char temp;

    temp = board[r1][c1];
    board[r1][c1] = board[r2][c2];
    board[r2][c2] = temp;

}

void pawn( int r1 , int c1 ) // paido
{
    pwstatus[c1]++;

    npf_printf( "Available are: \n" );

	if( pwstatus[c1] == 1 )
    {
        if( board[r1+1][c1] == ' ' )
			npf_printf( "%c%c , " , r1+1 + 48 , c1 + 48);

        if( board[r1+2][c1] == ' ' )
			npf_printf( "%c%c , " , r1+2 + 48 , c1 + 48);

    }
    else
    {
        if(board[r1+1][c1] == ' ' )
			npf_printf( "%c%c , " , r1+1 + 48 , c1 + 48);

        if( check(r1+1 , c1+1) == 1 )
			npf_printf( "%c%c , " , r1+1 + 48, c1+1 + 48);

        if( check(r1+1 , c1-1) == 1 )
			npf_printf( "%c%c* , " , r1+1 + 48, c1-1 + 48);
    }

}

void rook( int r1 , int c1 )
{
    int i , j , n;

    npf_printf( "Available are: \n" );

    n=c1;

    npf_printf( "Horizontally: \n" );

    while( board[r1][n-1] == ' ' )
    {
        if( n == 0 ) { break; }
        npf_printf( "%c%c , " , r1 + 48, n-1 + 48);
        n--;
    }

    n=c1;

    while( board[r1][n+1] == ' '  && (n+1) <= 7 )
    {

        npf_printf( "%c%c , " , r1 + 48, n+1 + 48);
        ++n;
    }

    npf_printf( "\nVertically:\n" );

    n = r1;

    while( board[n-1][c1] == ' ' && n > -1 )
    {
        npf_printf( "%c%c , " , n-1 + 48, c1 + 48);
        --n;
    }

    n = r1;

    while( (board[n+1][c1] == ' ') && ( (n) <= 7 ) )
    {
        npf_printf( "%c%c , " , n+1 + 48, c1 + 48);
        ++n;
    }

}

void horse( int r1 , int c1 )
{
    npf_printf( "Available are: " );


    if( board[r1+2][c1+1] == ' ' ) npf_printf( "%c%c, " , r1+2 + 48, c1+1 + 48);
    if( board[r1+2][c1-1] == ' ' ) { if( (c1-1) > -1 ) npf_printf( "%c%c, " , r1+2 + 48, c1-1 + 48); }

    if( board[r1+1][c1+2] == ' ' ) {  if( (c1+2) != 8 ) npf_printf( "%c%c, " , r1+1 + 48, c1+2 + 48); }
    if( board[r1-1][c1+2] == ' ' ) {  npf_printf( "%c%c, " , r1-1 + 48, c1+2 + 48); }

    if( board[r1-2][c1-1] == ' ' )
    {
        if( (c1-1) != -1 )
			npf_printf( "%c%c, " , r1-2 + 48, c1-1 + 48);
    }

    if( board[r1-2][c1+1] == ' ' ) npf_printf( "%c%c, " , r1-2 + 48, c1+1 + 48);

    if( board[r1+1][c1-2] == ' ' ) npf_printf( "%c%c, " , r1+1 + 48, c1-2 + 48);

    if( board[r1-1][c1-2] == ' ' )
    {
        if( (c1-2) != -1 )
            npf_printf( "%c%c, " , r1-1 + 48, c1-2 + 48);
    }
}


void camel( int r1 , int c1 )
{
    int a , b , c , d;
    npf_printf( "Available are: \n" );


    a = 1 , b = 1;

    while( board[r1-a][c1+b] == ' ' )
    {
        if( (r1-a) == -1 || (c1+b) == 8 ) break;
        npf_printf( "%c%c , " , r1-a + 48, c1+b + 48);
        a++;
        b++;
    }


    a = 1 , b = 1;

    while( board[r1+a][c1-b] == ' ' )
    {
        if( (r1+a) == 8 || (c1-b) == -1 ) break;
        npf_printf( "%c%c , " , r1+a + 48, c1-b + 48);
        a++;
        b++;
    }

    a = 1 , b = 1;


    while( board[r1+a][c1+b] == ' ' )
    {
        if( (r1+a) == 8 || (c1+b) == 8 ) break;
        npf_printf( "%c%c , " , r1+a + 48, c1+b + 48);
        a++;
        b++;
    }

    a = 1;
    b = 1;

    while( board[r1-a][c1-b] == ' ' )
    {
        if( (r1-a) == -1 || (c1-b) == -1 ) break;
        npf_printf( "%c%c , " , r1-a + 48, c1-b + 48);
        a++;
        b++;
    }

}

void king( int r1 , int c1 )
{
    npf_printf( "Available are: " );
    if( board[r1][c1+1] == ' ' ) npf_printf( "%c%c , " , r1 + 48, c1+1 + 48);

    if( board[r1][c1-1] == ' ' ) npf_printf( "%c%c , " , r1 + 48, c1-1 + 48);

    if( board[r1+1][c1] == ' ' ) npf_printf( "%c%c , " , r1+1 + 48, c1 + 48);

    if( board[r1-1][c1] == ' ' ) npf_printf( "%c%c , " , r1-1 + 48, c1 + 48);

    if( board[r1+1][c1+1] == ' ' ) npf_printf( "%c%c , " , r1+1 + 48, c1+1 + 48);

    if( board[r1-1][c1-1] == ' ' ) npf_printf( "%c%c , " , r1-1 + 48, c1-1 + 48);

    if( board[r1-1][c1+1] == ' ' ) npf_printf( "%c%c , " , r1-1 + 48, c1+1 + 48);

    if( board[r1+1][c1-1] == ' ' ) npf_printf( "%c%c , " , r1+1 + 48, c1-1 + 48);
}

void queen( int r1 , int c1 )
{
    int x=1 , y=1 , a , b;
    npf_printf( "Available are: " );

    npf_printf( "Horizontal: " );

    while( board[r1][c1-y] == ' ' )
    {
        if( (c1-y) == -1 ) break;
        npf_printf( "%c%c , " , r1 + 48, c1-y + 48);
        y++;
    }

    y = 1;

    while( board[r1][c1+y] == ' ' )
    {
        if( (c1+y) == 8 ) break;
        npf_printf( "%c%c , " , r1 + 48, c1+y + 48);
        y++;
    }

    npf_printf( "Vertical: " );

    x = 1;

    while( board[r1-x][c1] == ' ' )
    {
        if( (r1-x) == -1 ) break;
        npf_printf( "%c%c , " , r1-x + 48, c1 + 48);
        x++;
    }

    x = 1;

    while( board[r1+x][c1] == ' ' )
    {
        if( (r1+x) == 8 ) break;
        npf_printf( "%c%c , " , r1+x + 48, c1 + 48);
        x++;
    }

    npf_printf( "Diagonally: " );

    a = 1 , b = 1;

    while( board[r1-a][c1+b] == ' ' )
    {
        if( (r1-a) == -1 || (c1+b) == 8 ) break;
        npf_printf( "%c%c , " , r1-a + 48, c1+b + 48);
        a++;
        b++;
    }


    a = 1 , b = 1;

    while( board[r1+a][c1-b] == ' ' )
    {
        if( (r1+a) == 8 || (c1-b) == -1 ) break;
        npf_printf( "%c%c , " , r1+a + 48, c1-b + 48);
        a++;
        b++;
    }

    a = 1 , b = 1;


    while( board[r1+a][c1+b] == ' ' )
    {
        if( (r1+a) == 8 || (c1+b) == 8 ) break;
        npf_printf( "%c%c , " , r1+a + 48, c1+b + 48);
        a++;
        b++;
    }

    a = 1;
    b = 1;

    while( board[r1-a][c1-b] == ' ' )
    {
        if( (r1-a) == -1 || (c1-b) == -1 ) break;
        npf_printf( "%c%c , " , r1-a + 48, c1-b + 48);
        a++;
        b++;
    }

}

void pawnb( int r1 , int c1 ) // paido black
{
    pbstatus[c1]++;

    npf_printf( "Available are: \n" );


    if( pbstatus[c1] == 1 )
    {
        if( board[r1-1][c1] == ' ' )
			npf_printf( "%c%c , " , r1-1 + 48, c1 + 48);

        if( board[r1-2][c1] == ' ' )
			npf_printf( "%c%c , " , r1-2 + 48, c1 + 48);
    }
    else
    {
        if(board[r1-1][c1] == ' ' )
			npf_printf( "%c%c , " , r1-1 + 48, c1 + 48);

        if( check2(r1-1 , c1-1) == 1 )
			npf_printf( "%c%c* , " , r1-1 + 48, c1-1 + 48);

        if( check2(r1-1 , c1+1) == 1 )
			npf_printf( "%c%c* , " , r1-1 + 48, c1+1 + 48);
    }

}

void player1()
{
    int p1 , p2 , c1 , r1 , c2 , r2;
	int tmp;

    npf_printf( "\nPLAYER 1 - Big Case\n" );
again1:
    npf_printf( "\nEnter Position of Element to change ( RC ): " );
	/* our scanf wrapper... scanf("%d", &p1) */
    read(0, &tmp, 1);
	p1 = (tmp - 48) * 10;
	read(0, &tmp, 1);
	p1 += (tmp - 48);
	read(0, &tmp, 1);

    c1 = p1 % 10;
    r1 = p1 / 10;

    switch( board[r1][c1] )
    {
	case 'P': pawn( r1 , c1 );
		break;
	case 'R': rook( r1 , c1 );
		break;
	case 'H': horse( r1 , c1 );
		break;
	case 'C': camel( r1 , c1 );
		break;
	case 'K': king( r1 , c1 );
		break;
	case 'Q': queen( r1 , c1 );
		break;
	default:
		npf_printf("Invalid Position ! "); goto again1;
    }

    npf_printf( "\nEnter Position of Place to Send ( RC ): " );
	/* our scanf wrapper... scanf( "%d" , &p2 ) */
    read(0, &tmp, 1);
	p2 = (tmp - 48) * 10;
	read(0, &tmp, 1);
	p2 += (tmp - 48);
	read(0, &tmp, 1);

    c2 = p2 % 10;
    r2 = p2 / 10 ;


    change(r1,c1,r2,c2);
}

void player2()
{
    int p1 , p2 , c1 , r1 , c2 , r2;
	int tmp;

    npf_printf( "\nPLAYER 2 - Small Case \n");
again2:
    npf_printf( "\nEnter Position of Element to change ( RC ): " );
	/* our scanf wrapper... scanf("%d", &p1) */
    read(0, &tmp, 1);
	p1 = (tmp - 48) * 10;
	read(0, &tmp, 1);
	p1 += (tmp - 48);
	read(0, &tmp, 1);

    c1 = p1 % 10;
    r1 = p1 / 10;

    switch( board[r1][c1] )
    {
	case 'p': pawnb( r1 , c1 );
		break;
	case 'r': rook( r1 , c1 );
		break;
	case 'h': horse( r1 , c1 );
		break;
	case 'c': camel( r1 , c1 );
		break;
	case 'k': king( r1 , c1 );
		break;
	case 'q': queen( r1 , c1 );
		break;
	default: npf_printf( "Invalid Position ! " ); goto again2;
    }


    npf_printf( "\nEnter Position of Place to Send ( RC ): " );
	/* our scanf wrapper... scanf( "%d" , &p2 ) */
    read(0, &tmp, 1);
	p2 = (tmp - 48) * 10;
	read(0, &tmp, 1);
	p2 += (tmp - 48);
	read(0, &tmp, 1);

    c2 = p2 % 10;
    r2 = p2 / 10 ;


    change(r1,c1,r2,c2);
}

int check(int x , int y )
{
    switch( board[x][y] )
    {
    case 'p':
    case 'r':
    case 'h':
    case 'c':
    case 'k':
    case 'q':
		return 1;
    default:
		return 0;
    }
}

int check2(int x , int y )
{
    switch( board[x][y] )
    {
    case 'P':
    case 'R':
    case 'H':
    case 'C':
    case 'K':
    case 'Q':
		return 1;
    default:
		return 0;
    }
}

