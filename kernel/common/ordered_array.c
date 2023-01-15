#include <common/ordered_array.h>

#include <kernel/memory_manager.h>

#include <string.h>


uint8_t
standard_lessthan_predicate(array_type_t arg_1, array_type_t arg_2) 
{
    return arg_1 < arg_2 ? 0x01 : 0x00;
}


ordered_array_t
ordered_array_new(uint32_t max_size, lessthan_predicate_t less_than)
{
    ordered_array_t ordered_array;

    ordered_array.array = (void*)kmalloc(max_size * sizeof(array_type_t));
    memset(ordered_array.array, 0x00, max_size * sizeof(array_type_t));
    ordered_array.array_ll = 0;
    ordered_array.array_pl = max_size;
    ordered_array.less_than = less_than;

    return ordered_array;
}

ordered_array_t
ordered_array_new_at(void* addr, uint32_t max_size, lessthan_predicate_t less_than)
{
    ordered_array_t ordered_array;

    ordered_array.array = (array_type_t*)(addr);
    memset(ordered_array.array, 0x00, max_size * sizeof(array_type_t));
    ordered_array.array_ll = 0;
    ordered_array.array_pl = max_size;
    ordered_array.less_than = 0x00 == less_than ? &standard_lessthan_predicate : less_than; // Invoke constructor with less_than = 0 to use the standard one

    return ordered_array;
}


void
ordered_array_delete(ordered_array_t* _this)
{
    kfree(_this);
}


void
ordered_array_insert(ordered_array_t* _this, array_type_t value)
{
    uint32_t pos;
    for (pos = 0; pos < _this->array_ll; pos++)
    {
        array_type_t current_value = _this->array[pos];
        if (_this->less_than(value, current_value))
        {
            // Found first array[pos] such that value < array[pos], value should be inserted at array[pos]
            break;
        }
    }

    if (_this->array_ll == pos)
    {
        // We shall simply add value at the end of the array
        if (pos < _this->array_pl)
        {
            _this->array_ll += 1;
            _this->array[pos] = value;
        }
    }
    else
    {
        if (_this->array_ll < _this->array_pl)
        {
            // Shift array[pos] to the right
            for (uint32_t i = _this->array_ll - 1; i >= pos; i--)
            {
                _this->array[i + 1] = _this->array[i];
            } 

            // Set array[pos] = value
            _this->array[pos] = value;

            _this->array_ll += 1;
        }
    }
}


void
ordered_array_delete_at(ordered_array_t* _this, uint32_t index)
{
    if (_this->array_ll > 0)
    {
        for (uint32_t i = index; i < _this->array_ll; i++)
        {
            _this->array[i] = _this->array[i + 1];
        }

        _this->array_ll -= 1;
    }
}


array_type_t
ordered_array_at(ordered_array_t* _this, uint32_t index)
{
    if (index < _this->array_ll)
    {
        return _this->array[index];
    }
    else
    {
        return (array_type_t)(0x00);
    }
}
