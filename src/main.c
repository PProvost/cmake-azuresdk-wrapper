#include <stdio.h>

// Include them as you would expect, the CMake takes care of the rest
#include <az_span.h>
#include <az_iot_core.h>

int main()
{
    // Exercise core/core
    const az_span hw = AZ_SPAN_LITERAL_FROM_STR("Hello world\n");
    char buff[64];
    az_span_to_str(buff, 64, hw);
    printf((const char*) buff);

    // Exercise iot/core
    az_iot_status iotstatus;
    az_iot_get_status_from_uint32(200, &iotstatus);

    printf("iotstatus is %d!\n", iotstatus);

}