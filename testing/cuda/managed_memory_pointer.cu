#include <unittest/unittest.h>

#include <thrust/universal_allocator.h>

#include <type_traits>

template <typename T>
void TestCudaManagedMemoryPointer()
{
  static_assert(
    std::is_same<
      thrust::universal_ptr<T>,
      thrust::system::cuda::detail::managed_memory_pointer<T>
    >::value,
    "thrust::universal_ptr is not thrust::system::cuda::detail::managed_memory_pointer."
  );
}
DECLARE_GENERIC_UNITTEST(TestCudaManagedMemoryPointer);

