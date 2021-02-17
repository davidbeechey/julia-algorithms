# Insertion sort in Julia

function insertion_sort(array)
    for i in 2:length(array)
        current_value = array[i]
        position = i

        while position > 0 && array[position-1] > current_value
            array[position] = array[position-1]
            position = position -1
        end

        array[position] = current_value

    end

    return array
end

array = [1, 5, 7, 2, 6, 2, 9, 6, 1, 12, 5, 16, 8, 1, 4, 3]
sorted_array = insertion_sort(array)
print(array)

