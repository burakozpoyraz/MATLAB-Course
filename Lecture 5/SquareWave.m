function wave_matrix = SquareWave(x, n_array)
    n_max = max(n_array);
    n_index = 1;
    n = n_array(n_index);
    
    wave_sum = zeros(1, length(x));
    wave_matrix = zeros(length(n_array), length(x));
    for i = 1 : n_max
        a = 2 * i - 1;
        wave_sum = wave_sum + (1 / a) * sin(a * x);
        if i == n
            wave_matrix(n_index, :) = wave_sum;
            n_index = n_index + 1;
            if n_index <= length(n_array)
                n = n_array(n_index);
            end
        end
    end
end