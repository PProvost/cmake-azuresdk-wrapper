#include <stdio.h>

#include <az_span.h>

int main()
{
    const az_span hw = AZ_SPAN_LITERAL_FROM_STR("Hello world\n");
 
    char buff[64];
    az_span_to_str(buff, 64, hw);

    printf(buff);
}