#ifndef ATV_CAN_BITMANIP_HPP
#define ATV_CAN_BITMANIP_HPP

template <typename T>
T select_bits(T src, int start_bit, int length) {
    /*
    * Returns a value of type T where the bits within the range defined by start_bit and length
    * are copied from src and the rest of the bits are set to zero.
    *
    * Bit indexing starts from zero.
    *
    * Example:
    *   select_bits(xxxxxyxx, 2, 3) ==> 000xxy00
    *
    * T must be an unsigned integer type (it must have bitwise operations and sizeof(T)*8 must be equal the number of bits).
    * Types that have bitwise operators but do not satisfy the sizeof() assumption (notably, std::bitset<N> is such a type),
    * must use specialized versions of this function template.
    */
    int lshift = sizeof(T)*8-length-start_bit;
    T range = src << lshift;
    return range >> lshift;
}

template <typename T>
T get_bit_range(T src, int start_bit, int length) {
    /*
    * Returns a value of type T whose value is equal to the numerical value of the range defined by start_bit and length.
    *
    * Bit indexing starts from zero.
    *
    * Example:
    *   select_bits(xxxxyxxx, 2, 3) ==> 00000xxy
    *
    * T must support basic bitwise operations and select_bits<T>() must function properly.
    */
    T range = select_bits(src, start_bit, length);
    return range >> start_bit;
}

template <typename T>
bool get_single_bit(T src, int position) {
    return src & (static_cast<T>(1) << position);
}

template <typename T>
T substitute_bit_range(T target, int start_bit, int length, T value) {
    /*
    * Return a value of type T where the bit range defined by start_bit and length are set to the given value
    * and the rest of the bits are copied from target.
    *
    * Bit indexing starts from zero.
    *
    * Example:
    *   substitute_bit_range(xxxxxxxx, 2, 3, yyy) ==> xxxyyyxx
    *
    * T must support basic bitwise operations and select_bits<T>() must function properly.
    */
    T mask = get_bit_range(~static_cast<T>(0), start_bit, length) << start_bit;
    return (target & ~mask) | ((value << start_bit) & mask);
}

template <typename T>
bool substitute_single_bit(T target, int position, bool value) {
    T mask = static_cast<T>(1) << position;
    if (value) {
        return target | mask;
    }
    return target & ~mask;
}

#endif
