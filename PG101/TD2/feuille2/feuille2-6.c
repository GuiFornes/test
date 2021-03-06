#include <stdlib.h>
#include <stdio.h>

void afficher(int a0[], int taille)
{
  for (int i = 0; i < taille; i++)
    printf("%d  ", a0[i]);
  printf("\n");
}

int minimum(int a0[], int taille, int a1[])
{
  int min = 0;
  while (a0[min] != 0)
    min = min + 1;
  int i = min + 1;
  while (i != taille) {
    if (a1[min] > a1[i] && a0[i] == 0)
      min = i;
    i = i + 1;
  }
  return min;
}

void tri_selection(int a1[], int a2[], int taille)
{
  int c = 0;
  int a0[taille];
  int min;
  for (int i = 0; i < taille; i++)
    a0[i] = 0;
  while (c != taille) {
    min = minimum(a0, taille, a1);
    a2[c] = a1[min];
    a0[min] = 1;
    c = c + 1;
  }
}


int main(int argc, char* argv[])
{
  int a1[argc - 1];
  int a2[argc - 1];
  for (int i = 1; i < argc; i++)
    a1[i - 1] = atoi(argv[i]);
  tri_selection(a1, a2, argc - 1);
  afficher(a2, argc - 1);
  return 0;
}

