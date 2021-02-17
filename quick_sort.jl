# Quick sort in Julia

function quick_sort(array)

    if length(array) <= 1
        return array

    else
        pivot = pop!(array)

    end

    items_greater = []
    items_lower = []

    for item in array
        if item > pivot
            append!(items_greater, item)
        else
            append!(items_lower, item)

        end

    end

    return vcat(quick_sort(items_lower), [pivot], quick_sort(items_greater))

end

sorted_array = quick_sort([1, 5, 7, 2, 6, 2, 9, 6, 1, 12, 5, 16, 8, 1, 4, 3])
print(sorted_array)