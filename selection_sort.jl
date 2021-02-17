# Selection sort in Julia

function selection_sort(array)

    for i in 1:length(array)-1
        min_value = i
        for j in i+1:length(array)
            if array[j] < array[min_value]
                min_value = j
            end
        end

        if min_value != i
            array[min_value], array[i] = array[i], array[min_value]
        end
    end

    return array
end

sorted_array = selection_sort([1, 5, 7, 2, 6, 2, 9, 6, 1, 12, 5, 16, 8, 1, 4, 3])
print(sorted_array)