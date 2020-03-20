#include<stdio.h>
#include<windows.h>


#define NUM_COKE   10 //수량
#define NUM_SODA   10
#define NUM_ORANGE   10
#define NUM_FANTA   10
#define NUM_APPLE   10
#define NUM_COFFEE   10

int coin = 0;
int sales = 0;
int _return;
int stock;
int sales_return;
int coke = NUM_COKE, soda = NUM_SODA, orange = NUM_ORANGE, fanta = NUM_FANTA, apple = NUM_APPLE, coffee = NUM_COFFEE;

char notice[50] = { 0, };
char isSellout[6] = { 'o', 'o', 'o', 'o', 'o', 'o' };

void cefreshScreen();
void checkOrder(char c);
void returnCoin();
void checkSales();
void initSales();
void refreshScreen();
void putCoin(int _coin);
void takeDW(char num);




void MENU(); //메뉴판

int main()
{
   printf("\n\n\n\n\n\n\n\t\t\t※※※※음료수 자판기※※※\n\n");
   printf("\t\t\t\t 가동중...\n");
   Sleep(2000); //2초 잠시 멈춘 뒤 다음 화면으로 넘어간다.
   system("cls");
   char c = 0;
   
  
   while (1){
      refreshScreen();
      checkOrder(c);
      scanf("%c", &c);
	
   }
}

void refreshScreen()
{
   system("cls");
   MENU();
}

void checkOrder(char c)
{
   if (c == 0)
      return;

   if (c == '1' || c == '2' || c == '3' || c == '4' || c == '5' || c == '6')
   {
      takeDW(c);
   }
   else if (c == 'a' || c == 'A')
   {
      putCoin(100);
   }
   else if (c == 's' || c == 'S')
   {
      putCoin(500);
   }
   else if (c == 'd' || c == 'D')
   {
      putCoin(1000);
   }
   else if (c == 'q' || c == 'Q')
   {
      returnCoin();
   }
   else if (c == 'w' || c == 'W')
   {
      checkSales();
   }
   else  if (c == 'e' || c == 'E')
   {
      initSales();
   }
}

void MENU()
{
  
   printf("----------------------------------------\n");
   printf("☞ <1> 콜라           : 700원      [재고 상태 %c]\n", isSellout[0]);
   printf("☞ <2> 사이다         : 700원      [재고 상태 %c]\n", isSellout[1]);
   printf("☞ <3> 오렌지 주스    : 500원      [재고 상태 %c]\n", isSellout[2]);
   printf("☞ <4> 환타           : 700원      [재고 상태 %c]\n", isSellout[3]);
   printf("☞ <5> 사과 주스      : 500원      [재고 상태 %c]\n", isSellout[4]);
   printf("☞ <6> 커피           : 300원      [재고 상태 %c]\n", isSellout[5]);
   printf("----------------------------------------\n");
   printf("※※※※※※※ 도움말 ※※※※※※※\n");
   printf("----------------------------------------\n");;
   printf("☞a<A> : 100원 투입 \n");
   printf("☞s<S> : 500원 투입 \n");
   printf("☞d<D> : 1000원 투입 \n");
   printf("----------------------------------------\n");
   printf("☞q<Q> : 동전 반환 \n");
   printf("☞w<W> : 자판기 판매 매출 \n");
   printf("☞e<E> : 자판기 초기화 \n");
   printf("----------------------------------------\n");
   printf("----------------------------------------\n");
   printf("[ 투입 금액 %d]\n", coin);

   printf("--- : %s\n", notice);
   
}

void takeDW(char num){
   if (num == '1'){
      if (coke == 0)
      {
         sprintf(notice, "콜라의 재고가 모자랍니다.\n");
         return;
      }
      else if (coin < 700)
      {
         sprintf(notice, "투입 금액이 모자랍니다.\n");
         return;
      }
      sales += 700;
      coin -= 700;
      sprintf(notice, "콜라를 뽑았습니다.\n");
      coke -= 1;
      if (coke == 0)
         isSellout[0] = 'x';
   }
   else if (num == '2'){
      if (soda == 0)
      {
         sprintf(notice, "사이다의 재고가 모자랍니다.\n");
         return;
      }
      else if (coin < 700)
      {
         sprintf(notice, "투입 금액이 모자랍니다.\n");
         return;
      }
      sales += 700;
      coin -= 700;
      sprintf(notice, "사이다를 뽑았습니다.\n");
      soda -= 1;
      if (soda == 0)
         isSellout[1] = 'x';
   }
   else if (num == '3'){
      if (orange == 0)
      {
         sprintf(notice, "오렌지 주스의 재고가 모자랍니다.\n");
         return;
      }
      else if (coin < 500)
      {
         sprintf(notice, "투입 금액이 모자랍니다.\n");
         return;
      }
      sales += 500;
      coin -= 500;
      sprintf(notice, "오렌지 주스를 뽑았습니다.\n");
      orange -= 1;
      if (orange == 0)
         isSellout[2] = 'x';
   }
   else if (num == '4'){
      if (fanta == 0)
      {
         sprintf(notice, "환타의 재고가 모자랍니다.\n");
         return;
      }
      else if (coin < 700)
      {
         sprintf(notice, "투입 금액이 모자랍니다.\n");
         return;
      }
      sales += 700;
      coin -= 700;
      sprintf(notice, "환타를 뽑았습니다.\n");
      fanta -= 1;
      if (fanta == 0)
         isSellout[3] = 'x';
   }
   else if (num == '5'){
      if (apple == 0)
      {
         sprintf(notice, "사과 주스의 재고가 모자랍니다.\n");
         return;
      }
      else if (coin < 500)
      {
         sprintf(notice, "투입 금액이 모자랍니다.\n");
         return;
      }
      sales += 500;
      coin -= 500;
      sprintf(notice, "사과 주스를 뽑았습니다.\n");
      apple -= 1;
      if (apple == 0)
         isSellout[4] = 'x';
   }
   else if (num == '6'){
      if (coffee == 0)
      {
         sprintf(notice, "커피의 재고가 모자랍니다.\n");
         return;
      }
      else if (coin < 300)
      {
         sprintf(notice, "투입 금액이 모자랍니다.\n");
         return;
      }
      sales += 300;
      coin -= 300;
      sprintf(notice, "커피를 뽑았습니다.\n");
      coffee -= 1;
      if (coffee == 0)
         isSellout[5] = 'x';
   }
}

void putCoin(int _coin)
{
   coin += _coin;
   sprintf(notice, "%d원을 넣었습니다.\n", _coin);
}

void returnCoin(){
   sprintf(notice, "%d원이 동전이 반환 되었습니다", coin);
   coin = 0;
}

void checkSales(){
   sprintf(notice, "현재 매출은 %d원 입니다.\n", sales);
}

void initSales(){
   sprintf(notice, "자판기가 초기화 되었습니다.\n");
   coke = NUM_COKE;
   soda = NUM_SODA;
   orange = NUM_ORANGE;
   fanta = NUM_FANTA;
   apple = NUM_APPLE;
   coffee = NUM_COFFEE;
   sales = 0;
   coin = 0;
   for (int i = 0; i < 6; i++){
      isSellout[i] = 'o';
   }
}