#include <stdio.h>
#include <math.h>

struct couple_int{
  int min;
  int max;
};

struct couple_int min_max(int n, int t[])
{
  struct couple_int p = {t[0], t[0]};
  for(int i = 1 ; i < n ; i++){
    if(t[i]>p.max)
      p.max=t[i];
    if(t[i]<p.min)
      p.min=t[i];
  }
  return p;
}

int main(int argc, char **argv)
{
  int t[] = {5, 4, 8, 6, 13, 1, 2};
  int i = 0;
  while(i<7){
    printf("%d ", t[i]);
    i++;
  }
  struct couple_int p = min_max(7, t);
  printf("\n(%d, %d)\n", p.min, p.max);
  return 0;
}
//alternative avec les pointeurs
