void initConio(void);
void closeConio(void);
void disableEcho(void);
void enableEcho(void);
void enableKeyPress(void);
void disableKeyPress(void);
char extendedKeyPress(void);
bool keyPress(void);
int getchar_nix();

#define getch(X) getchar(X)
