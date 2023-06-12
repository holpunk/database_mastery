import csv

def convert_csv_to_sql(csv_file_path, table_name):
    sql_file_path = table_name + '.sql'
    sql_statements = []

    with open(csv_file_path, 'r') as csv_file:
        csv_reader = csv.reader(csv_file)
        headers = next(csv_reader)  # Assuming the first row contains column headers

        for row in csv_reader:
            values = ','.join(["'" + value + "'" for value in row])
            sql = f"INSERT INTO {table_name} ({','.join(headers)}) VALUES ({values});"
            sql_statements.append(sql)

    with open(sql_file_path, 'w') as sql_file:
        sql_file.write('\n'.join(sql_statements))

    print(f"SQL statements written to {sql_file_path}")

# Example usage
csv_file_path = 'names.csv'  # Replace with your CSV file path
table_name = 'my_table'  # Replace with your desired table name
convert_csv_to_sql(csv_file_path, table_name)
