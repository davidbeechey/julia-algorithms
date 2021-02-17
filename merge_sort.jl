# Merge sort in Julia

function merge_sort(array)

    if length(array) > 1

        midpoint = fld(length(array), 2)

        left = array[1:midpoint]
        right = array[midpoint+1:end]

        merge_sort(left)
        merge_sort(right)

        li = 1
        ri = 1
        k = 1

        while li < length(left)+1 && ri < length(right)+1
            if left[li] < right[ri]
                array[k] = left[li]
                li += 1
            else
                array[k] = right[ri]
                ri += 1
            end
            k += 1
        end

        while li < length(left)+1
            array[k] = left[li]
            li += 1
            k += 1
        end
 
        while ri < length(right)+1
            array[k] = right[ri]
            ri += 1
            k += 1   
        end

    end

    return array
end

array = [1, 5, 7, 2, 6, 2, 9, 6, 11, 12, 5, 16, 8, 16, 4, 3]
print(merge_sort(array))