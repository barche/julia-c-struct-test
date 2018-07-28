#include <stdio.h>

struct OneWrappedInt
{
  int x;
};

struct TwoWrappedInts
{
  int x;
  int y;
};

#ifdef _WIN32
      #define DLL_EXPORT __declspec(dllexport)
#else
   #define DLL_EXPORT
#endif

DLL_EXPORT void print_one(struct OneWrappedInt x)
{
  printf("%d\n", x.x);
}

DLL_EXPORT void print_two(struct TwoWrappedInts x)
{
  printf("%d %d\n", x.x, x.y);
}
