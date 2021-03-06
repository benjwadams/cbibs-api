SELECT MIN(measure_ts) FROM f_observation o
    JOIN d_variable v ON v.id = o.d_variable_id
    JOIN d_station st ON st.id = o.d_station_id
    JOIN d_provider pr ON pr.id = st.d_provider_id;
    WHERE st.description = %(station)s AND v.actual_name = %(measurement)s
    AND UPPER(pr.organization) = UPPER(%(constellation)s);
