#ifndef _ORD_ARRAY_H
#define _ORD_ARRAY_H

#include <stdint.h>

// This array can store anything that can be cast to a void*, that's some form of parametric polymorphism
typedef void* array_type_t;

// A less than predicate which shall return 1 if arg_1 is somehow less than arg_2
typedef uint8_t (*lessthan_predicate_t)(array_type_t arg_1, array_type_t arg_2); 

// Data structure which represents an ordered array of type array_type_t
typedef struct
{
    array_type_t* array; // The array itself
    uint32_t array_ll;   // The array logical length 
    uint32_t array_pl;   // The array physical length
    lessthan_predicate_t less_than; // The predicate used to order array elements from lowest to highest
} ordered_array_t;


// A standard lessthan predicate, this can be used if array_type_t is basic numerical data type (int, float, double, etc)
uint8_t standard_lessthan_predicate(array_type_t arg_1, array_type_t arg_2);

// ------ ORDERED ARRAY "METHODS" ------

// "Constructors" of an ordered array
ordered_array_t ordered_array_new(uint32_t max_size, lessthan_predicate_t less_than);
ordered_array_t ordered_array_new_at(void* addr, uint32_t max_size, lessthan_predicate_t less_than);
// "Destructor" of an ordered array
void ordered_array_delete(ordered_array_t* _this);

// The insert method (insertion sorted)
void ordered_array_insert(ordered_array_t* _this, array_type_t value);

// The delete value at (index) method
void ordered_array_delete_at(ordered_array_t* _this, uint32_t index);

// The get value at (index) method
array_type_t ordered_array_at(ordered_array_t* _this, uint32_t index);

#endif