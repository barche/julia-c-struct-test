#include <stdio.h>

struct OneWrappedInt
{
  double x;
};

struct TwoWrappedInts
{
  double x;
  double y;
};

#ifdef _WIN32
      #define DLL_EXPORT __declspec(dllexport)
#else
   #define DLL_EXPORT
#endif

DLL_EXPORT void print_one(struct OneWrappedInt x)
{
  printf("%f\n", x.x);
}

DLL_EXPORT void print_two(struct TwoWrappedInts x)
{
  printf("%f %f\n", x.x, x.y);
}
