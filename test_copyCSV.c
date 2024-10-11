#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LINE_SIZE 1000

int main() {
    // Specify the file path
    const char *filePath = "C:\\Users\\CPS Lab\\Documents\\nordic_semi\\nRF5_SDK_17.0.2_d674dde\\examples\\ble_peripheral\\my_ble_adc_ML2";

    // Open the file for reading
    FILE *file = fopen(filePath, "r");

    // Check if the file was opened successfully
    if (file == NULL) {
        fprintf(stderr, "Error opening file: %s\n", filePath);
        return 1; // Exit with an error code
    }

    // Read the file line by line
    char line[MAX_LINE_SIZE];

    while (fgets(line, sizeof(line), file) != NULL) {
        // Process each line (you can use strtok to tokenize the CSV line)
        // For simplicity, let's just print the entire line in this example
        printf("CSV Line: %s", line);
    }

    // Close the file
    fclose(file);

    return 0;
}
