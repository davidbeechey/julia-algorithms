# Bubble sort in Julia

function bubble_sort(array)

    for i in 1:length(array)
        for j in 1:length(array)-i
            if array[j] > array[j+1]
                array[j], array[j+1] = array[j+1], array[j]
            end
        end
    end

end

array = [1, 5, 7, 2, 6, 2, 9, 6, 1, 12, 5, 16, 8, 1, 4, 3]
sorted_array = bubble_sort(array)
print(array)