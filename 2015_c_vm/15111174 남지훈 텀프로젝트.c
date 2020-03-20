#include<stdio.h>
#include<windows.h>


#define NUM_COKE   10 //����
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




void MENU(); //�޴���

int main()
{
   printf("\n\n\n\n\n\n\n\t\t\t�ءءء������ ���Ǳ�ءء�\n\n");
   printf("\t\t\t\t ������...\n");
   Sleep(2000); //2�� ��� ���� �� ���� ȭ������ �Ѿ��.
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
   printf("�� <1> �ݶ�           : 700��      [��� ���� %c]\n", isSellout[0]);
   printf("�� <2> ���̴�         : 700��      [��� ���� %c]\n", isSellout[1]);
   printf("�� <3> ������ �ֽ�    : 500��      [��� ���� %c]\n", isSellout[2]);
   printf("�� <4> ȯŸ           : 700��      [��� ���� %c]\n", isSellout[3]);
   printf("�� <5> ��� �ֽ�      : 500��      [��� ���� %c]\n", isSellout[4]);
   printf("�� <6> Ŀ��           : 300��      [��� ���� %c]\n", isSellout[5]);
   printf("----------------------------------------\n");
   printf("�ءءءءءء� ���� �ءءءءءء�\n");
   printf("----------------------------------------\n");;
   printf("��a<A> : 100�� ���� \n");
   printf("��s<S> : 500�� ���� \n");
   printf("��d<D> : 1000�� ���� \n");
   printf("----------------------------------------\n");
   printf("��q<Q> : ���� ��ȯ \n");
   printf("��w<W> : ���Ǳ� �Ǹ� ���� \n");
   printf("��e<E> : ���Ǳ� �ʱ�ȭ \n");
   printf("----------------------------------------\n");
   printf("----------------------------------------\n");
   printf("[ ���� �ݾ� %d]\n", coin);

   printf("--- : %s\n", notice);
   
}

void takeDW(char num){
   if (num == '1'){
      if (coke == 0)
      {
         sprintf(notice, "�ݶ��� ��� ���ڶ��ϴ�.\n");
         return;
      }
      else if (coin < 700)
      {
         sprintf(notice, "���� �ݾ��� ���ڶ��ϴ�.\n");
         return;
      }
      sales += 700;
      coin -= 700;
      sprintf(notice, "�ݶ� �̾ҽ��ϴ�.\n");
      coke -= 1;
      if (coke == 0)
         isSellout[0] = 'x';
   }
   else if (num == '2'){
      if (soda == 0)
      {
         sprintf(notice, "���̴��� ��� ���ڶ��ϴ�.\n");
         return;
      }
      else if (coin < 700)
      {
         sprintf(notice, "���� �ݾ��� ���ڶ��ϴ�.\n");
         return;
      }
      sales += 700;
      coin -= 700;
      sprintf(notice, "���̴ٸ� �̾ҽ��ϴ�.\n");
      soda -= 1;
      if (soda == 0)
         isSellout[1] = 'x';
   }
   else if (num == '3'){
      if (orange == 0)
      {
         sprintf(notice, "������ �ֽ��� ��� ���ڶ��ϴ�.\n");
         return;
      }
      else if (coin < 500)
      {
         sprintf(notice, "���� �ݾ��� ���ڶ��ϴ�.\n");
         return;
      }
      sales += 500;
      coin -= 500;
      sprintf(notice, "������ �ֽ��� �̾ҽ��ϴ�.\n");
      orange -= 1;
      if (orange == 0)
         isSellout[2] = 'x';
   }
   else if (num == '4'){
      if (fanta == 0)
      {
         sprintf(notice, "ȯŸ�� ��� ���ڶ��ϴ�.\n");
         return;
      }
      else if (coin < 700)
      {
         sprintf(notice, "���� �ݾ��� ���ڶ��ϴ�.\n");
         return;
      }
      sales += 700;
      coin -= 700;
      sprintf(notice, "ȯŸ�� �̾ҽ��ϴ�.\n");
      fanta -= 1;
      if (fanta == 0)
         isSellout[3] = 'x';
   }
   else if (num == '5'){
      if (apple == 0)
      {
         sprintf(notice, "��� �ֽ��� ��� ���ڶ��ϴ�.\n");
         return;
      }
      else if (coin < 500)
      {
         sprintf(notice, "���� �ݾ��� ���ڶ��ϴ�.\n");
         return;
      }
      sales += 500;
      coin -= 500;
      sprintf(notice, "��� �ֽ��� �̾ҽ��ϴ�.\n");
      apple -= 1;
      if (apple == 0)
         isSellout[4] = 'x';
   }
   else if (num == '6'){
      if (coffee == 0)
      {
         sprintf(notice, "Ŀ���� ��� ���ڶ��ϴ�.\n");
         return;
      }
      else if (coin < 300)
      {
         sprintf(notice, "���� �ݾ��� ���ڶ��ϴ�.\n");
         return;
      }
      sales += 300;
      coin -= 300;
      sprintf(notice, "Ŀ�Ǹ� �̾ҽ��ϴ�.\n");
      coffee -= 1;
      if (coffee == 0)
         isSellout[5] = 'x';
   }
}

void putCoin(int _coin)
{
   coin += _coin;
   sprintf(notice, "%d���� �־����ϴ�.\n", _coin);
}

void returnCoin(){
   sprintf(notice, "%d���� ������ ��ȯ �Ǿ����ϴ�", coin);
   coin = 0;
}

void checkSales(){
   sprintf(notice, "���� ������ %d�� �Դϴ�.\n", sales);
}

void initSales(){
   sprintf(notice, "���ǱⰡ �ʱ�ȭ �Ǿ����ϴ�.\n");
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