# Binary search in Julia

function binary_search(array, item)

    start_index = 0
    end_index = length(array)

    while start_index < end_index
        midpoint = start_index + fld((end_index - start_index), 2)
        midpoint_value = array[midpoint]

        if midpoint_value == item
            return midpoint

        elseif item < midpoint_value
            end_index = midpoint - 1

        else
            start_index = midpoint + 1
        end

    end

    return nothing

end

array = [1, 1, 1, 2, 2, 3, 4, 5, 5, 6, 6, 7, 8, 9, 12, 16]
index = binary_search(array, 9)
print(index)


