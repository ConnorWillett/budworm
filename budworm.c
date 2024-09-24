#include <stdio.h>

#define T 100

int main(int argc, char **argv)
{
  float r = .23;
  float K = 4000;
  float alpha = 200;
  float bata = 100;
  float B = 1;
  float dt = 0.1;
  float dBdt;
  for(float t = 0; t < T; t += dt)
  {
    printf("%f\t%f\t%f\n",t,B,dBdt);
    B = B + (r*B*(1-(B/K))-bata*((B*B)/(alpha*alpha+B*B)))*dt;
    dBdt =  r*B*(1-(B/K))-bata*((B*B)/(alpha*alpha+B*B));

  }


  return 0;
}
